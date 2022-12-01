#!/bin/bash

#uri_array=("home;index;hello;wp-admin")

echo $1

echo $2

uri_string=$2
IFS=';' read -a uri_array <<< "$uri_string"

RANDOM=$$$(date +%s)

while sleep 10; do 

    selecteduri=${uri_array[ $RANDOM % ${#uri_array[@]} ]}

    curl -s http://$1/$selecteduri -o /dev/null

done