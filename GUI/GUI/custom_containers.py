import os
import psutil

dir_path = os.path.dirname(os.path.realpath(__file__))

resource_files_dir = "{}/resource_files".format(dir_path.split("GUI")[0])

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


def get_uwe_net_interface():

	uwe_net_interface = ""

	addrs = psutil.net_if_addrs()
	
	for key, val in addrs.items():
		for i in val:
			if "172.18.0.1" in i:
				uwe_net_interface = key
				break
	
	return uwe_net_interface


mysql_container = Container("mysql", "dh157/goibhniu:mysql", ipv4_addr="172.18.0.6", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"])

phpmyadmin_container = Container("phpmyadmin", "phpmyadmin:5.2.0", ipv4_addr="172.18.0.14", svc_check="http://172.18.0.14", environment=["PMA_HOST={}".format(mysql_container.ipv4_addr)], volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"])

joomla_container = Container("joomla", "dh157/goibhniu:joomla", ipv4_addr="172.18.0.15", svc_check="http://172.18.0.15", environment=["JOOMLA_DB_HOST={}:3306".format(mysql_container.ipv4_addr)], volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"])

postgres_container = Container("postgres", "dh157/goibhniu:postgres", ipv4_addr="172.18.0.5", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"])

confluence_container = Container("confluence", "dh157/goibhniu:confluence", ipv4_addr="172.18.0.16", svc_check="http://172.18.0.16:8090")

tomcat_container = Container("tomcat", "dh157/goibhniu:tomcat", ipv4_addr="172.18.0.17", svc_check="http://172.18.0.17:8080")

wordpress_container = Container("wordpress", "dh157/goibhniu:wordpress", ipv4_addr="172.18.0.18", svc_check="http://172.18.0.18", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"])

httpd_container = Container("httpd", "dh157/goibhniu:httpd", ipv4_addr="172.19.0.11", volumes=['{}/Custom_Containers/httpd/httpd.conf:/usr/local/apache2/conf/httpd.conf:ro'.format(resource_files_dir), 
    '{}/Custom_Containers/httpd/htdocs:/usr/local/apache2/htdocs/'.format(resource_files_dir),
    "/etc/timezone:/etc/timezone:ro",
    "/etc/localtime:/etc/localtime:ro"], capabilities=["NET_ADMIN","NET_RAW"])

dnsmasq_container = Container("dnsmasq", "dh157/goibhniu:dnsmasq", ipv4_addr="172.19.0.53", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"], capabilities=["NET_ADMIN","NET_RAW"])

opensmtpd_container = Container("opensmtpd", "dh157/goibhniu:opensmtpd", ipv4_addr="172.19.0.25", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"], capabilities=["NET_ADMIN","NET_RAW"])

random_traffic_container = Container("random_traffic", "dh157/goibhniu:traffic_generator", ipv4_addr="172.18.0.42", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"],command='172.18.0.18 "home;index;hello;wp-admin"')

auto_attack_container = Container("auto_attack", "dh157/goibhniu:auto_attack", ipv4_addr="172.18.0.142", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"],command='-target 172.18.0.11 -scanners "nmap;wpscan"')

target_container = Container("target", "dh157/goibhniu:ubuntu", ipv4_addr="172.18.0.200", volumes=["/etc/timezone:/etc/timezone:ro","/etc/localtime:/etc/localtime:ro"], devices=["/dev/input/event0"])

attackbox_container = Container("attackbox", "dh157/goibhniu:attackbox") 

filebeat_container = Container("filebeat", "docker.elastic.co/beats/filebeat:7.17.2", ipv4_addr="172.18.0.12", run_as_user="root", command="-strict.perms=false", environment=["output.elasticsearch.hosts=['172.18.0.10:9200']"], volumes=['{}/Custom_Containers/filebeat/filebeat.docker.yml:/usr/share/filebeat/filebeat.yml:ro'.format(resource_files_dir), 
    '{}/Custom_Containers/suricata/filebeat_suricata.yml:/usr/share/filebeat/modules.d/suricata.yml:ro'.format(resource_files_dir),
    '{}/logfiles:/var/log/suricata/:ro'.format(resource_files_dir),
    '/var/lib/docker/containers:/var/lib/docker/containers:ro', 
    "/var/run/docker.sock:/var/run/docker.sock:ro",
    "/etc/timezone:/etc/timezone:ro",
    "/etc/localtime:/etc/localtime:ro"])

suricata_container = Container("suricata", "dh157/goibhniu:suricata")

elasticsearch_container = Container("elasticsearch", "elasticsearch:7.17.2", ipv4_addr="172.18.0.10", svc_check="http://172.18.0.10:9200", default_port="9200", environment=["discovery.type=single-node"], volumes=["/etc/timezone:/etc/timezone:ro", "/etc/localtime:/etc/localtime:ro"])

kibana_container = Container("kibana", "kibana:7.17.2", ipv4_addr="172.18.0.11", svc_check="http://172.18.0.11:5601/status", default_port="5601", volumes=["/etc/timezone:/etc/timezone:ro", "/etc/localtime:/etc/localtime:ro"])
    
custom_containers ={

    #"mysql":[mysql_container,True,[],[]],
    #"phpmyadmin":[phpmyadmin_container,True,[],[]],
    #"joomla":[joomla_container,True,[],[]],
    "confluence":[confluence_container,False,["popen",'docker run -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro --name confluence --net uwe_tek_external --ip 172.18.0.16 -it dh157/goibhniu:confluence'],["nohup bash /tomcat_to_stdout.sh &"]],
    "httpd":[httpd_container,True,[],[]],
    "postgres":[postgres_container,True,[],[]],
    "tomcat":[tomcat_container,False,["popen",'docker run -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro --name tomcat --net uwe_tek_external --ip 172.18.0.17 -it dh157/goibhniu:tomcat'],["nohup bash /tomcat_to_stdout.sh &"]],
    "wordpress":[wordpress_container,True,[],[]]
}

aux_containers = {
    "dnsmasq":[dnsmasq_container,True,[],[]],
    "opensmtpd":[opensmtpd_container,True,[],[]],
    "random_traffic":[random_traffic_container,True,[],[]],
    "auto_attack":[auto_attack_container,True,[],[]]
}

required_containers ={

    "target":[target_container,True,[],[]],
    "attackbox":[attackbox_container,False,["popen",'docker run -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro -v {}/exploit_material/:/exploit_material/ --name attackbox --net uwe_tek_external --ip 172.18.0.157 --cap-add=NET_ADMIN --cap-add=NET_RAW -it dh157/goibhniu:attackbox'.format(dir_path.split("GUI")[0])],["rsyslogd"]],
    #"filebeat":[filebeat_container,True,["run",'docker run --rm --name=filebeat_setup --net uwe_tek_external --ip 172.18.0.9 docker.elastic.co/beats/filebeat:7.17.2 setup -E setup.kibana.host=172.18.0.11:5601 -E output.elasticsearch.hosts=["172.18.0.10:9200"]'],[]],
    "suricata":[suricata_container,False,["run",'docker run -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro -d --name suricata --net=host --cap-add=net_admin --cap-add=net_raw --cap-add=sys_nice -v {}/logfiles:/var/log/suricata dh157/goibhniu:suricata -i {}'.format(resource_files_dir,get_uwe_net_interface())],[]],
    #"elasticsearch":[elasticsearch_container,True,[],[]],
    #"kibana":[kibana_container,True,[],[]],

}

