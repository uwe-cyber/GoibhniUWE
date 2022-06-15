import docker
import subprocess

api_client = docker.APIClient(base_url='unix://var/run/docker.sock')

cmd_in_container = api_client.exec_create("confluence", "nohup bash /tomcat_to_stdout.sh &")

result = api_client.exec_start(cmd_in_container, detach=True)

print("cmd in containr: ", result)