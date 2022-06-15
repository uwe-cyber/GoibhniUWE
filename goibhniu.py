#!/usr/bin/env python3
import os
import re
import time
import json
import docker
import signal
import requests
import psycopg2
import subprocess
import espcap.espcap as espcap

from io import BytesIO
from mysql.connector import connect, Error


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


def elastic_setup():

    if container_check("elasticsearch") != "running":

        local_docker_check("elasticsearch:7.17.2")

        elastic_container = docker_client.containers.create("elasticsearch:7.17.2",
        detach=True, 
        name="elasticsearch", 
        environment=["discovery.type=single-node"])

        docker_client.networks.get("uwe_tek").connect(elastic_container, 
        ipv4_address="172.18.0.10")

        elastic_container.start()
        containers.append("elasticsearch")
    
        # Wait for container(s) to come online   
        container_check("elasticsearch", "running")

    service_check("http://172.18.0.10:9200")
        
    return "elasticsearch:7.17.2 is up and running and can be accessed on 172.18.0.10:9200\n"

def kibana_setup():

    if container_check("kibana") != "running":

        local_docker_check("kibana:7.17.2")

        kibana_container = docker_client.containers.create("kibana:7.17.2", 
        detach=True, 
        name="kibana")

        docker_client.networks.get("uwe_tek").connect(kibana_container, 
        ipv4_address="172.18.0.11")

        kibana_container.start()
        containers.append("kibana")
    
        # Wait for container(s) to come online   
        container_check("kibana", "running")
    
    service_check("http://172.18.0.11:5601/status")
        
    return "kibana:7.17.2 is up and running and can be accessed on 172.18.0.11:5601\n"


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
        volumes=['{}/resource_files/Configs/filebeat.docker.yml:/usr/share/filebeat/filebeat.yml:ro'.format(dir_path), '/var/lib/docker/containers:/var/lib/docker/containers:ro', "/var/run/docker.sock:/var/run/docker.sock:ro"],
        command="-strict.perms=false")
        
        docker_client.networks.get("uwe_tek").connect(filebeat_container, 
        ipv4_address="172.18.0.12")

        filebeat_container.start()

        containers.append("filebeat")
    
    return


def httpd_setup():

    if container_check("httpd") != "running":

        local_docker_check("httpd:2.4")

        httpd_container = docker_client.containers.create("httpd:2.4", 
        detach=True, 
        name="httpd", 
        volumes=['{}/resource_files/Configs/httpd.conf:/usr/local/apache2/conf/httpd.conf:ro'.format(dir_path), '{}/resource_files/htdocs:/usr/local/apache2/htdocs/'.format(dir_path)])

        docker_client.networks.get("uwe_tek").connect(httpd_container, 
        ipv4_address="172.18.0.13")
        
        httpd_container.start()

        container_check("httpd", "running")

        containers.append("httpd")
    
    return "httpd:2.4 is up and running on 172.18.0.13\n"


def mysql_setup():

    if container_check("mysql") != "running":

        local_docker_check("uwe_mysql:101")

        mysql_container = docker_client.containers.create("uwe_mysql:101", 
        detach=True, 
        name="mysql")

        docker_client.networks.get("uwe_tek").connect("mysql", 
        ipv4_address="172.18.0.14")

        mysql_container.start()

        container_check("mysql", "running")

        containers.append("mysql")

        # As with kibana we have a difference between the container running and the microservice
        # Test connection with known bad creds until we get the expected error
        no_connection = True

        print("Waiting for MySQL to come online - This may take several minutes")

        while no_connection:
            time.sleep(5)
            try:
                with connect(
                    host="172.18.0.14",
                    user="test",
                    password="ing",
                ) as connection:
                    break
            except Error as e:
                if "Access denied for user" in str(e):
                    no_connection = False
    
    print("MySQL is online")

    return 


def phpmyadmin_setup():

    if container_check("phpmyadmin") != "running":

        local_docker_check("phpmyadmin:5.2.0")

        mysql_container = docker_client.containers.create("phpmyadmin:5.2.0", 
        detach=True, 
        name="phpmyadmin",
        environment=["PMA_HOST=172.18.0.14"])

        docker_client.networks.get("uwe_tek").connect("phpmyadmin", 
        ipv4_address="172.18.0.15")

        mysql_container.start()

        container_check("phpmyadmin", "running")

        containers.append("phpmyadmin")

        # As with kibana we have a difference between the container running and the microservice
        # Test connection with known bad creds until we get the expected error
        no_connection = True

        service_check("http://172.18.0.15")
    
    return "phpmyadmin:5.2.0 is up and running on 172.18.0.15\n"
    

def joomla_setup():

    if container_check("joomla") != "running":

        local_docker_check("uwe_joomla:101")

        mysql_container = docker_client.containers.create("uwe_joomla:101", 
        detach=True, 
        name="joomla",
        environment=["JOOMLA_DB_HOST=172.18.0.14:3306"])

        docker_client.networks.get("uwe_tek").connect("joomla", 
        ipv4_address="172.18.0.16")

        mysql_container.start()

        container_check("joomla", "running")

        containers.append("joomla")

        # As with kibana we have a difference between the container running and the microservice
        # Test connection with known bad creds until we get the expected error
        no_connection = True

        service_check("http://172.18.0.16")
    
    return "uwe_joomla:101 is up and running on 172.18.0.16\n"


def postgres_setup():

    if container_check("postgres") != "running":

        local_docker_check("uwe_postgres:101")

        postgres_container = docker_client.containers.create("uwe_postgres:101", 
        detach=True, 
        name="postgres")

        docker_client.networks.get("uwe_tek").connect("postgres", 
        ipv4_address="172.18.0.17")

        postgres_container.start()

        container_check("postgres", "running")

        containers.append("postgres")

        # As with kibana we have a difference between the container running and the microservice
        # Test connection with known bad creds until we get the expected error
        no_connection = True

        while no_connection:
            time.sleep(2)
            
            try:
                conn = psycopg2.connect(
                        host="172.18.0.17",
                        database="test",
                        user="test",
                        password="ing")
            except Exception as e:
                if "authentication failed" in str(e):
                    no_connection = False

    return "uwe_postgres:101 is up and running on 172.18.0.17:5432\n"


def confluence_setup():

    if container_check("confluence") != "running":

        local_docker_check("uwe_confluence:101")

        confluence_container = docker_client.containers.create("uwe_confluence:101", 
        detach=True, 
        name="confluence")

        docker_client.networks.get("uwe_tek").connect("confluence", 
        ipv4_address="172.18.0.19")

        confluence_container.start()

        container_check("confluence", "running")

        containers.append("confluence")

        # Attempts to do this through the docker API didn't work...?
        #result = subprocess.run(['gnome-terminal', '-x', 'bash', '-c', 'docker exec confluence nohup /tomcat_to_stdout.sh &'], capture_output=True, text=True)

        #print(result.stdout)
        #print(result.stderr)

        service_check("http://172.18.0.19:8090")

        #TODO - Add in docker exec for nohup
    
    return "uwe_confluence:101 is up and running on 172.18.0.19:8090\n"


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

# Add in clean container shutdown on keyboard interrupt ...?        
if __name__ == '__main__':

    running_container_info = "\n"

    if os.geteuid() != 0:
        exit("This script needs elevated privileges.\nPlease try again, this time using 'sudo'. Exiting.")

    sub_network_check()

    #mysql_setup()

    running_container_info += postgres_setup()
    running_container_info += confluence_setup()

    #running_container_info += phpmyadmin_setup()
    #running_container_info += joomla_setup()

    #running_container_info += httpd_setup()

    # Done last to avoid polluting the logs with test connections
    running_container_info += elastic_setup()
    running_container_info += kibana_setup()

    log_monitor_setup()

    #traffic_creation_setup()

    print("----------------------------------------------------------------")
    print(running_container_info)
    print("----------------------------------------------------------------")

    cmd_in_container = api_client.exec_create("confluence", "nohup bash /tomcat_to_stdout.sh &")

    result = api_client.exec_start(cmd_in_container, detach=True)

    print("cmd in containr: ", result)

    # Make chunk sizing dynamic / changeable on the fly

    #TODO - make the blacklist ammendable so we can add confluence etc on the fly

    #filter_string = "src net 172.18.0.0/24 and dst net 172.18.0.0/24 and host not 172.18.0.10 and host not 172.18.0.11"

    filter_string = "host 172.18.0.1 and host not 172.18.0.10 and host not 172.18.0.11"

    # How small / large an amount of data is cached before being sent to kibana
    chunk_size = 50

    espcap.main("172.18.0.10:9200","any",filter_string,chunk_size,0,containers)

