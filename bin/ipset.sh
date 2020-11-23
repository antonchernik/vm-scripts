#!/bin/sh
ipset destroy
ipset --create loc hash:net --hashsize 4096
ipset --add loc 192.168.1.0/24
echo "=============================||============================="
ipset --list
echo "=============================||============================="
