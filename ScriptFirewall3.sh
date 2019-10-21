#!/bin/sh
iptables -X

iptables -F

iptables -t nat -X

iptables -t nat -F

echo 1 > /proc/sys/net/ipv4/ip_forward

iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT

iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT

iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE

