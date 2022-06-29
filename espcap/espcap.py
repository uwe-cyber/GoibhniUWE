#!/usr/bin/env python

""" espcap.py

Network packet capture and indexing with Elasticsearch

Copyright (c) 2019 Vic Hargrave

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.

You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
"""


import os
import sys
import click
import syslog
import logging
import requests


from elasticsearch import helpers
from elasticsearch import Elasticsearch


from .tshark import Tshark
from .indexer import index_packets, dump_packets


logging.getLogger("elasticsearch").setLevel(logging.CRITICAL)

containers = []

def packet_template(version, node):

    if version == 7:
        json_data = {
            'index_patterns': [
                'packets-*',
            ],
            'mappings': {
                'dynamic': 'false',
                'properties': {
                    'timestamp': {
                        'type': 'date',
                    },
                    'layers': {
                        'properties': {
                            'frame': {
                                'properties': {
                                    'frame_interface_id_frame_interface_name': {
                                        'type': 'keyword',
                                    },
                                    'frame_frame_protocols': {
                                        'type': 'text',
                                        'analyzer': 'simple',
                                    },
                                },
                            },
                            'ip': {
                                'properties': {
                                    'ip_ip_src': {
                                        'type': 'ip',
                                    },
                                    'ip_ip_dst': {
                                        'type': 'ip',
                                    },
                                    'ip_ip_version': {
                                        'type': 'integer',
                                    },
                                },
                            },
                            'udp': {
                                'properties': {
                                    'udp_udp_srcport': {
                                        'type': 'integer',
                                    },
                                    'udp_udp_dstport': {
                                        'type': 'integer',
                                    },
                                },
                            },
                            'tcp': {
                                'properties': {
                                    'tcp_tcp_srcport': {
                                        'type': 'integer',
                                    },
                                    'tcp_tcp_dstport': {
                                        'type': 'integer',
                                    },
                                    'tcp_flags_tcp_flags_str': {
                                        'type': 'keyword',
                                    },
                                    'tcp_flags_tcp_flags_urg': {
                                        'type': 'integer',
                                    },
                                    'tcp_flags_tcp_flags_ack': {
                                        'type': 'integer',
                                    },
                                    'tcp_flags_tcp_flags_push': {
                                        'type': 'integer',
                                    },
                                    'tcp_flags_tcp_flags_reset': {
                                        'type': 'integer',
                                    },
                                    'tcp_flags_tcp_flags_syn': {
                                        'type': 'integer',
                                    },
                                    'tcp_flags_tcp_flags_fin': {
                                        'type': 'integer',
                                    },
                                    'tcp_tcp_seq': {
                                        'type': 'integer',
                                    },
                                    'tcp_tcp_ack': {
                                        'type': 'integer',
                                    },
                                    'tcp_tcp_window_size': {
                                        'type': 'integer',
                                    },
                                },
                            },
                        },
                    },
                },
            },
        }

    response = requests.put('http://{}/_template/packets'.format(node), json=json_data)

    if '"acknowledged":true' in str(response.content):
        print("Packet template applied")


def init_live_capture(es, tshark, nic, bpf, chunk, count, output_file):
    """ Set up for live packet capture.

    :param es: Elasticsearch cluster handle, None if packets are dumped to stdout
    :param tshark: Tshark instance
    :param indexer: Indexer instance
    :param nic: Network interface
    :param bpf: Packet filter expression
    :param chunk: Number of packets to index in Elasticsearch at a time.
    :param count: Number of packets to capture, 0 if capturing indefinitely,
    """
    try:
        command = tshark.make_command(nic=nic, count=count, bpf=bpf, pcap_file=None, interfaces=False,output_file=output_file)
        capture = tshark.capture(command)
        if es is None:
        	if output_file is None:
        		dump_packets(capture)
        else:
            helpers.bulk(client=es, actions=index_packets(capture=capture), chunk_size=chunk, raise_on_error=True)

    except Exception as e:
        print('[ERROR] ', e)
        syslog.syslog(syslog.LOG_ERR, e)
        sys.ext(1)


def init_file_capture(es, tshark, pcap_files, chunk):
    """ Set up for file packet capture.

    :param es: Elasticsearch cluster handle, None if packets are dumped to stdout
    :param tshark: Tshark instance
    :param indexer: Indexer instance
    :param pcap_files: PCAP input file from where packets are read.
    :param chunk: Number of packets to index in Elasticsearch at a time.
    """
    try:
        print('Loading packet capture file(s)')
        for pcap_file in pcap_files:
            command = tshark.make_command(nic=None, count=0, bpf=None, pcap_file=pcap_file, interfaces=None)
            print(pcap_file)
            capture = tshark.capture(command)
            if es is None:
                dump_packets(capture)
            else:
                helpers.bulk(client=es, actions=index_packets(capture=capture), chunk_size=chunk, raise_on_error=True)

    except Exception as e:
        print('[ERROR] ', e)
        syslog.syslog(syslog.LOG_ERR, e)
        sys.ext(1)


def main(node, nic, bpf, chunk,count,containers,output_file):
    try:
        containers = containers
        
        tshark = Tshark()
        tshark.set_interrupt_handler()

        es = None
        if node is not None:
            es = Elasticsearch(node)

            print("Testing elasticsearch connection")

            ping_success = False

            for _ in range(0,5):

                if es.ping():
                    print("Ping success")
                    cluster_info = es.info()
                    cluster_info["version"]["number"]

                    packet_template(int(cluster_info["version"]["number"].split(".")[0]), node)
                    ping_success = True
                    break

            if not ping_success:
                print("Unable to ping elasticsearch instance on {}\nPlease check and try again".format(node))
                sys.exit(1)

        syslog.syslog("espcap started")

        if nic is not None:
            init_live_capture(es=es, tshark=tshark, nic=nic, bpf=bpf, chunk=chunk, count=count,output_file=output_file)

    except Exception as e:
        print('[ERROR] ', e)
        syslog.syslog(syslog.LOG_ERR, e)
        sys.exit(1)
