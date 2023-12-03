#!/usr/bin/env python3

"""Django's command-line utility for administrative tasks."""
import os
import sys
import time
import signal
import binascii
import cProfile

dir_path = os.path.dirname(os.path.realpath(__file__))

resource_file_path = "{}resource_files".format(dir_path.split("GUI")[0])

pcap_file = "capture_{}.pcap".format(time.strftime("%d%m%Y"))

output_fldr = "{}output_files/{}".format(dir_path.split("GUI")[0],time.strftime("%d-%m-%Y_%H%M"))

def log_clean_up():

	try:
		with open("{}/{}".format(resource_file_path,pcap_file), 'rb') as f:
			content = f.read()

		hex_str = binascii.hexlify(content).decode('ascii')

		rpl_hex_str = hex_str.replace("ac1c0001","ac1c009d")

		file_str = binascii.unhexlify(rpl_hex_str)

		if not os.path.isdir(output_fldr):
			os.makedirs(output_fldr)

		with open("{}/{}".format(output_fldr,pcap_file), 'wb') as f:
			f.write(file_str)

		os.chown("{}/{}".format(output_fldr,pcap_file),1001,1001)
	except Exception as e:
		print("Error: {}".format(e))
		print("Pcap clean up already completed")

	try:
		for root, dirs, files in os.walk("{}/resource_files/logfiles".format(dir_path)):
			for file in [os.path.join(root, f) for f in files]:
				os.chown(file,1001,1001)
				os.chmod(file, stat.S_IRUSR | stat.S_IWUSR | stat.S_IRGRP | stat.S_IWGRP | stat.S_IROTH | stat.S_IWOTH)

				with open(file, 'r') as file_in :
					filedata = file_in.read()

				filedata = filedata.replace('"172.28.0.1"', '"172.28.0.157"')
				filedata = filedata.replace('172.28.0.1:', '172.28.0.157:')

				with open("{}/{}".format(output_fldr,os.path.basename(file)), 'w') as file_out:
					file_out.write(filedata)
	except Exception as e:
		print("Error: {}".format(e))
		print("Log clean up already completed")
	
	#TODO add in elasticdump commands here
	
	# Need to dynamically pull the filebeat indices and then we should be good to just parse as a docker command
	
	#docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp elasticdump/elasticsearch-dump --input=http://172.18.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_mapping.json --type=mapping
	#docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp ^Casticdump/elasticsearch-dump --input=http://172.18.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_analyzer.json --type=analyzer
	#docker run --rm -it --name=elasticdump --net=uwe_tek_external -v $(pwd):/tmp elasticdump/elasticsearch-dump --input=http://172.18.0.10:9200/filebeat-7.17.2-2022.08.22-000001 --output=/tmp/filebeat_data.json --type=data

	
	print("\nShutting down - Output files saved in {}".format(output_fldr))


def docker_clean_up():

	os.system("docker stop $(docker ps -qa) && docker rm $(docker ps -qa)")


def clean_exit(sig, frame):
	#ac1c0001 = 172.18.0.1 - Host (browser activity etc)
	#ac1c009d = 172.18.0.157 - AttackBox

	docker_clean_up()

	log_clean_up()

	sys.exit(0)


def main():

    signal.signal(signal.SIGINT, clean_exit)

    """Run administrative tasks."""
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'DjangoGUI.settings')
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    execute_from_command_line(sys.argv)


if __name__ == '__main__':
    #cProfile.run('main()')
	main()
