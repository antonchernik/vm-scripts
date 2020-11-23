#!/bin/sh
echo "Starting saving iptables..."
iptables-save > /etc/iptables/rules.v4
echo "Iptables saved"
