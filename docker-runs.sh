#!/bin/bash
for container_name in $(docker ps --format "{{.Names}}")
do
    ipv4=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $container_name)
    echo "$container_name : $ipv4"
done