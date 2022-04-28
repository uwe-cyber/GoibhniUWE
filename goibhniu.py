import os
import re
import time
import docker
import subprocess
import espcap.espcap as espcap

from io import BytesIO


docker_client = docker.DockerClient(base_url='unix://var/run/docker.sock')

api_client = docker.APIClient(base_url='unix://var/run/docker.sock')

def traffic_monitor_setup(api_client):

    image_list = ["elasticsearch:7.17.2","kibana:7.17.2"]

    ipv4_addresses = ["172.18.0.10","172.18.0.11"]

    env_args = ["discovery.type=single-node","None"]

    for i in range(0, len(image_list)):
        image = image_list[i]
        container_name = image.split(":")[0]
        ip_addr = ipv4_addresses[i]

        container = docker_client.containers.create(image, detach=True, name=container_name, environment=[env_args[i]])
        docker_client.networks.get("uwe_tek").connect(container, ipv4_address=ip_addr)
        container.start()
    
    # Wait for container(s) to come online    
    time.sleep(30)

# Add in clean container shutdown on keyboard interrupt
def traffic_creation_setup():

    container_names = ["blue_team", "red_team"]

    ipv4_addresses = ["172.18.0.20", "172.18.0.21"]

    for i in range(0, len(container_names)):
        subprocess.Popen(['gnome-terminal', '-x', 'bash', '-c', 'docker run -it --rm --name {} --net uwe_tek --ip {} uwe_battleships:{}'.format(container_names[i],ipv4_addresses[i],container_names[i])], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

def network_create(api_client,network_subnets):

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
    network_create(api_client,network_subnets)

#TODO - Add check for elasticsearch / kibana containers
traffic_monitor_setup(api_client)

traffic_creation_setup()

# Make chunk sizing dynamic / changeable on the fly
espcap.main("172.18.0.10:9200","any","src net 172.18.0.0/24 and host not 172.18.0.10 and host not 172.18.0.11",50,0)
