#!/bin/sh
iptables -A FORWARD -i eth0 -m state --state NEW,ESTABLISHED -p tcp --dport 80 -j DROP

