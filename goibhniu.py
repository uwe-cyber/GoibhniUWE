#!/usr/bin/env python3
import os
import re
import time
import json
import docker
import signal
import requests
import subprocess
import espcap.espcap as espcap

from io import BytesIO


docker_client = docker.DockerClient(base_url='unix://var/run/docker.sock')

api_client = docker.APIClient(base_url='unix://var/run/docker.sock')

containers = []

dir_path = os.path.dirname(os.path.realpath(__file__))


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
    else:
        return status

    return

def traffic_monitor_setup():

    image_list = ["elasticsearch:7.17.2","kibana:7.17.2"]

    ipv4_addresses = ["172.18.0.10","172.18.0.11"]

    ports = [9200,5601]

    env_args = ["discovery.type=single-node","None"]

    temp_str = ""

    for i in range(0, len(image_list)):
        image = image_list[i]
        container_name = image.split(":")[0]
        ip_addr = ipv4_addresses[i]
        port = ports[i]

        if container_check(container_name) != "running":

            local_docker_check(image)

            container = docker_client.containers.create(image, detach=True, name=container_name, environment=[env_args[i]])
            docker_client.networks.get("uwe_tek").connect(container, ipv4_address=ip_addr)
            container.start()
            containers.append(container_name)
        
            # Wait for container(s) to come online   
            container_check(container_name, "running")

        temp_str += "\n{} is up and running on {} and can be accessed on {}:{}\n".format(container_name,ip_addr,ip_addr,port)
    
    # Check kibana status - We can use last assigned items as kibana is last in our loop ^
    kibana_status = 404

    while kibana_status != 200:
        try:
            response = requests.get("http://{}:{}/status".format(ip_addr,port))
        # If kibana is "running" but not yet setup we get a connection error
        except:
            continue

        kibana_status = response.status_code
        
    return temp_str


def log_monitor_setup():

    if container_check("filebeat") != "running":

        local_docker_check("docker.elastic.co/beats/filebeat:7.17.2")

        subprocess.run(['gnome-terminal', '-x', 'bash', '-c', 'docker run --rm --name=filebeat_setup --net uwe_tek --ip 172.18.0.9 docker.elastic.co/beats/filebeat:7.17.2 setup -E setup.kibana.host=172.18.0.11:5601 -E output.elasticsearch.hosts=["172.18.0.10:9200"]'], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

        print("Filebeat setup completed")


        filebeat_container = docker_client.containers.create("docker.elastic.co/beats/filebeat:7.17.2", 
        detach=True, 
        name="filebeat", 
        user="root", 
        environment=["output.elasticsearch.hosts=['172.18.0.10:9200']"],
        volumes=['{}/resource_files/configs/filebeat.docker.yml:/usr/share/filebeat/filebeat.yml:ro'.format(dir_path), '/var/lib/docker/containers:/var/lib/docker/containers:ro', "/var/run/docker.sock:/var/run/docker.sock:ro"],
        command="-strict.perms=false")
        docker_client.networks.get("uwe_tek").connect(filebeat_container, ipv4_address="172.18.0.12")
        filebeat_container.start()

        containers.append("filebeat")
    
    return


def httpd_setup():

    if container_check("httpd") != "running":

        local_docker_check("httpd:2.4")

        httpd_container = docker_client.containers.create("httpd:2.4", 
        detach=True, 
        name="httpd", 
        volumes=['{}/resource_files/configs/httpd.conf:/usr/local/apache2/conf/httpd.conf:ro'.format(dir_path), '{}/resource_files/htdocs:/usr/local/apache2/htdocs/'.format(dir_path)])
        docker_client.networks.get("uwe_tek").connect(httpd_container, ipv4_address="172.18.0.13")
        httpd_container.start()

        container_check("httpd", "running")

        containers.append("httpd")
    
    return "httpd:2.4 is up and running on 172.18.0.13"
    

# Add in clean container shutdown on keyboard interrupt
def traffic_creation_setup():

    container_names = ["blue_team", "red_team"]

    ipv4_addresses = ["172.18.0.20", "172.18.0.21"]

    for i in range(0, len(container_names)):

        if container_check(container_names[i]) == "running":

            container = docker_client.containers.get(container_names[i])
            container.stop()

            container_status = container_check(container_names[i])

            while container_status != "removed":
                time.sleep(5)
                container_status = container_check(container_names[i])

    # issues with trying to do both in the same loop due to C2 dependencies for containers

    for i in range(0, len(container_names)):

        subprocess.Popen(['gnome-terminal', '-x', 'bash', '-c', 'docker run -it --rm --name {} --net uwe_tek --ip {} uwe_battleships:{}'.format(container_names[i],ipv4_addresses[i],container_names[i])], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)
    
    return


def network_create(network_subnets):

    count = 18
    
    while True:
        uwe_tek_subnet = "172.{}.0.0/24".format(str(count))

        if uwe_tek_subnet not in network_subnets:
            break
        else:
            count += 1

    ipam_pool = docker.types.IPAMPool(subnet=uwe_tek_subnet)

    ipam_config = docker.types.IPAMConfig(pool_configs=[ipam_pool])

    api_client.create_network("uwe_tek",ipam=ipam_config)

    print("uwe_tek network created - Subnet = {}".format(uwe_tek_subnet))

    return


def sub_network_check():

    network_list = api_client.networks()

    network_subnets = []

    uwe_tek_exists = False

    for network in network_list:
        if network["Name"] == "uwe_tek":
            print("uwe_tek network found - Subnet = {}".format(network["IPAM"]["Config"][0]["Subnet"]))
            uwe_tek_exists = True
            break
        if len(network["IPAM"]["Config"]) > 0:
            for i in range(0,len(network["IPAM"]["Config"])):
                network_subnets.append(network["IPAM"]["Config"][i]["Subnet"])

    if not uwe_tek_exists:
        network_create(network_subnets)

    return

        
if __name__ == '__main__':

    running_container_info = ""

    if os.geteuid() != 0:
        exit("This script needs elevated privileges.\nPlease try again, this time using 'sudo'. Exiting.")

    sub_network_check()

    running_container_info += traffic_monitor_setup()

    log_monitor_setup()

    traffic_creation_setup()

    running_container_info += httpd_setup()

    print("----------------------------------------------------------------")
    print(running_container_info)
    print("----------------------------------------------------------------")

    # Make chunk sizing dynamic / changeable on the fly
    espcap.main("172.18.0.10:9200","any","src net 172.18.0.0/24 and dst net 172.18.0.0/24 and host not 172.18.0.10 and host not 172.18.0.11",50,0,containers)

