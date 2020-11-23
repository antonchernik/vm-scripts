#!/bin/sh
BASEDIR=$(dirname "$0")
echo "Starting ipset initialization..."
sh $BASEDIR/ipset.sh
echo "Ipset initialized"
echo "Starting iptables initialization..."
/sbin/iptables-restore < /etc/iptables/rules.v4
/sbin/ip6tables-restore < /etc/iptables/rules.v6
echo "Iptables initialized"
