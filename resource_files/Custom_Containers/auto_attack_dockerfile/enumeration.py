#!/usr/bin/env python3

import os
import argparse
import datetime
import ipaddress

from random import randint
from time import sleep

def enumerate_target(target, scanner_list):

	if ipaddress.ip_address(target):
		target_subnet = ipaddress.ip_network("{}/255.255.255.0".format(target), strict=False)
		print(target_subnet)

	for scanner in scanner_list:
	
		sleep(randint(10,100))
		
		now = datetime.datetime.now()
		syslog_timestamp = now.strftime("%b  %d %H:%M:%S")


		if scanner == "nmap":
			nmap_mapping_cmd = "nmap -A {}".format(target_subnet)
			nmap_targeted_cmd = "nmap -sTV {}".format(target)

			print(nmap_mapping_cmd)
			with open("/var/log/syslog","a") as sys_log_file:
				sys_log_file.write("{}: {}\n".format(syslog_timestamp,nmap_mapping_cmd))

			os.system(nmap_mapping_cmd)

			print(nmap_targeted_cmd)
			now = datetime.datetime.now()
			syslog_timestamp = now.strftime("%b  %d %H:%M:%S")
			with open("/var/log/syslog","a") as sys_log_file:
				sys_log_file.write("{}: {}\n".format(syslog_timestamp,nmap_targeted_cmd))
			os.system(nmap_targeted_cmd)

		if scanner == "wpscan":
			wpscan_no_token = "wpscan --url {}".format(target)

			wpscan_token = " wpscan --url {} --api-token OtnYl3AzzwuBC3eAdMBrWLszP9RAsuLoBA3PPEsMa0k".format(target)

			print(wpscan_no_token)
			with open("/var/log/syslog","a") as sys_log_file:
				sys_log_file.write("{}: {}\n".format(syslog_timestamp,wpscan_no_token))
			os.system(wpscan_no_token)

		if scanner == "nikto":
			nikto_cmd = "nikto -h {}".format(target)

			print(nikto_cmd)
			with open("/var/log/syslog","a") as sys_log_file:
				sys_log_file.write("{}: {}\n".format(syslog_timestamp,nikto_cmd))
			os.system(nikto_cmd)


if __name__ == '__main__':

	parser = argparse.ArgumentParser(description="CHANGEME")

	parser.add_argument("-target", help="The target to scan" ,required=True)
	parser.add_argument("-scanners", help="The scanners to use - This should be a ';' seperated list, e.g.\n 'wpscan;nmap'" ,default="all")

	args = parser.parse_args()
	target = args.target
	scanners = args.scanners

	if scanners == "all":
		scanner_list = ["nmap", "wpscan", "nikto"]

	else:
		scanner_list = scanners.split(";")


sleep(randint(60,120))

enumerate_target(target,scanner_list)
