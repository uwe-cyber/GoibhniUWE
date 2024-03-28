import os
import psutil

dir_path = os.path.dirname(os.path.realpath(__file__))

resource_files_dir = "{}resource_files".format(dir_path.split("GUI")[0])

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

random_traffic_container = Container("random_traffic", "dh157/goibhniu:traffic_generator", ipv4_addr="172.28.0.42", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"],command='172.28.0.18 "home;index;hello;wp-admin"')

auto_attack_container = Container("auto_attack", "dh157/goibhniu:auto_attack", ipv4_addr="172.28.0.142", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"],command='-target 172.28.0.11 -scanners "nmap;wpscan"')

attackbox_container = Container("attackbox", "dh157/goibhniu:attackbox")

aux_containers = {
    "random_traffic":[random_traffic_container,True,[],[]],
    "auto_attack":[auto_attack_container,True,[],[]]
}

required_containers ={
    "attackbox":[attackbox_container,False,["popen",'docker run -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro -v {}/exploit_material/:/exploit_material/ --name attackbox --net uwe_tek_external --ip 172.28.0.157 --cap-add=NET_ADMIN --cap-add=NET_RAW -it dh157/goibhniu:attackbox'.format(dir_path.split("GUI")[0])],["rsyslogd"]],
}

header_dc = f"""
version: '2.3'

services:
"""

target_sect = f"""
  target:
    image: dh157/goibhniu:target_os
    devices:
      - /dev/input/event0
    networks:
      external:
        ipv4_address: 172.28.0.200
      internal:
        ipv4_address: 172.29.0.200
    deploy:
      resources:
         limits:
           cpus: '0.50'
           memory: 1g
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
"""

ek_containers_sect = f"""
  elasticsearch:
    image: elasticsearch:7.17.18
    environment:
      - discovery.type=single-node
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    networks:
      external:
        ipv4_address: 172.28.0.10
    ports:
      - 9200:9200
    deploy:
      resources:
         limits:
           cpus: '0.50'
           memory: 2g
  kibana:
    image: kibana:7.17.18
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    networks:
      external:
        ipv4_address: 172.28.0.11
    ports:
      - 5601:5601
    deploy:
      resources:
         limits:
           cpus: '0.50'
           memory: 2g
    depends_on:
      - elasticsearch
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:5601/status"]
      interval: 1m30s
      timeout: 10s
      retries: 5
      start_period: 150s
"""

filebeat_sect = f"""
  filebeat_setup:
    image: docker.elastic.co/beats/filebeat:7.17.18
    user: 0:0
    environment:
      - setup.kibana.host=172.28.0.11:5601
      - output.elasticsearch.hosts=['172.28.0.10:9200']
    networks:
      external:
        ipv4_address: 172.28.0.8
    deploy:
      resources:
         limits:
           cpus: '0.50'
           memory: 1g
    command:
      - 'setup'
      - '-E'
      - 'setup.kibana.host=172.28.0.11:5601'
      - '-E'
      - 'output.elasticsearch.hosts=["172.28.0.10:9200"]'
    depends_on:
      kibana:
        condition: service_healthy

  filebeat:
    image: docker.elastic.co/beats/filebeat:7.17.18
    user: 0:0
    environment:
      - output.elasticsearch.hosts=['172.28.0.10:9200']
    volumes:
      - path_replace/Custom_Containers/required_containers/filebeat/filebeat.docker.yml:/usr/share/filebeat/filebeat.yml:ro
      - path_replace/Custom_Containers/required_containers/filebeat/filebeat_suricata.yml:/usr/share/filebeat/modules.d/suricata.yml:ro
      - path_replace/logfiles:/var/log/suricata/:ro
      - /var/lib/docker/containers:/var/lib/docker/containers:ro
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    networks:
      external:
        ipv4_address: 172.28.0.9
    deploy:
      resources:
         limits:
           cpus: '0.50'
           memory: 1g
    command:
      - "-strict.perms=false"
    depends_on:
      filebeat_setup:
        condition: service_completed_successfully
"""

packetbeat_sect = f"""
  packetbeat_setup:
    image: docker.elastic.co/beats/packetbeat:7.17.18
    environment:
      - setup.kibana.host=172.28.0.11:5601
      - output.elasticsearch.hosts=['172.28.0.10:9200']
    networks:
      external:
        ipv4_address: 172.28.0.7
    deploy:
      resources:
         limits:
           cpus: '0.50'
           memory: 1g
    cap_add:
      - net_admin
    command:
      - 'setup'
      - '-E'
      - 'setup.kibana.host=172.28.0.11:5601'
      - '-E'
      - 'output.elasticsearch.hosts=["172.28.0.10:9200"]'
    depends_on:
      kibana:
        condition: service_healthy

  packetbeat:
    image: docker.elastic.co/beats/packetbeat:7.17.18
    user: packetbeat
    environment:
      - output.elasticsearch.hosts=['172.28.0.10:9200']
    volumes:
      - path_replace/Custom_Containers/required_containers/packetbeat/packetbeat.docker.yml:/usr/share/packetbeat/packetbeat.yml:ro
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    network_mode: "host"
    deploy:
      resources:
         limits:
           cpus: '0.50'
           memory: 1g
    cap_add:
      - net_admin
      - net_raw
    command:
      - '--strict.perms=false'
      - '-e'
      - '-E'
      - 'output.elasticsearch.hosts=["172.28.0.10:9200"]'
    depends_on:
      packetbeat_setup:
        condition: service_completed_successfully
"""

suricata_sect = f"""
  suricata:
    image: dh157/goibhniu:suricata
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
      - path_replace/logfiles:/var/log/suricata
    deploy:
      resources:
         limits:
           cpus: '0.50'
           memory: 1g
    cap_add:
      - net_admin
      - net_raw
      - sys_nice
    command:
      - "-i network_interface"
    network_mode: "host"
    depends_on:
      - elasticsearch
      - kibana
      - filebeat
"""

# TODO update enumeration, change spluit from ; to - or something
auto_attack = f"""
  auto_attack:
    image: dh157/goibhniu:auto_attack
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    networks:
      external:
        ipv4_address: 172.28.0.142
    deploy:
      resources:
         limits:
           cpus: '0.50'
           memory: 1g
    command:
      - '-target'
      - 'auto_attack_target'
      - '-scanners'
      - 'selected_scanners'
"""

traffic_generator = f"""
  traffic_generator:
    image: dh157/goibhniu:traffic_generator
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    networks:
      external:
        ipv4_address: 172.28.0.42
    deploy:
      resources:
         limits:
           cpus: '0.50'
           memory: 1g
    command:
      - 'traffic_target'
      - 'endpoints'
"""

tail_dc = f"""
networks:
  external:
    name: uwe_tek_external
    external: true
  internal:
    name: uwe_tek_internal
    external: true
"""
