#!/bin/sh
iptables -A FORWARD -p tcp --dport 22 -j DROP

