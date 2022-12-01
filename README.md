# Goibhniu

Goibhniu is a container based cyber range that allows end users to spin up complex attack scenarios spread across multiple networks quickly and easily. 

Goibhniu offers built in logging and monitoring to allow for data from attacks to be analysed at a later date. This includes:
* IDS - Suricata
* Traffic Capture - Tshark
* EFK - Elasticsearch, Filebeats and Kibana (containerised)
* Container logs

This allows end users to setup live monitoring of attacks or capture data and load it back into an Elasticsearch stack afterwards. The EFK stack can also be turned off for a more lightweight expereince based around log and traffic capture analysis.

## Container Usage and Setup

Goibhniu uses a combination of custom built containers and pre-existing vulnerable container enviornments found on [vulnhub](https://github.com/vulhub/vulhub). Custom containers such as the attackbox, target OS and IDS are deployed by default while other custom environments can be selected or even created based on end user needs and requirements. 

The pre-existing custom containers are hosted on [DockerHub](https://hub.docker.com/repository/docker/dh157/goibhniu) and are pulled down as and when required. While the container environments from vulnhub are loaded via a git clone and update process.

## Attacks and Traffic

Goibhniu comes complete with the following offensive containers:
* attackbox - Built on parrot OS this is the main offensive "actor"
* auto_attack - An optional container that can be set to randomly scan / probe a target container
* traffic_generator - An optional container that can be set to generate web traffic for a target container

The attackbox comes with a `auto_attack.py` script which takes commands in the form of a .json file. This can be used to automate attacks allowing for quick and easy replication of attacks as and when required. 

## GUI

Goibhniu uses a simple Django based API that is used to view:
* Vulnhub Containers
    * Select and view containers based on their CWE and subsequent application or CVE

* Custom containers
    * Select and view pre-existing custom containers

* Environment and Setup Deployment
    * Allows end users to customise their container range topography, adding in auxillary containers, move containers between networks and save scenarios once setup and created. It also provides a graphical representation of the current container network deployment so end users can make note of assigned IP addresses and container connextability.

* User Defined Scenarios
    * End users can save scenarios preior to deployment and then load them to save on setup time. Using this in combination with the `auto_attack` functionality end users can quickly and easily replicate attacks multiple times

* Edit dockerfiles
    * Edit dockerfiles for containers selected from either Vulnhub or pre-existing custom containers. These can then be saved as new custome containers, selectable for future use and deployment

![Network Diagram Example](images/APT_41.png?raw=true "Network Diagram Example")