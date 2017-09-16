#!/bin/bash
# Script made by Andreas Nilsen / Zylla - adde88@gmail.com
#
# apt proxy script for NetworkManager
# This script will scan /etc/resolv.conf for a specific network.
# If it detects this network, then it makes changes to your apt proxy.
# Perfect to automatically make it set your apt-proxy when you're at home, and remove it when you're on a different network.
# I use it on my laptop, to make it connect to my apt-cache-ng server when i'm at home.
#
MyNetwork=`iwgetid -r`
#
#
#
# Below is the code that actually make changes to NetworkManagers config-files
if [[ $MyNetwork == "<network name>" ]]; then
        if [[ ! -f "/etc/apt/apt.conf.d/02proxy" ]]; then
                echo 'Acquire::http { Proxy "http://<proxy-location:port>"; };' | tee /etc/apt/apt.conf.d/02proxy
        fi
elif [[ $MyNetwork == "<other network name>" ]]; then
        if [[ ! -f "/etc/apt/apt.conf.d/02proxy" ]]; then
                echo 'Acquire::http { Proxy "http://<proxy-location:port>"; };' | tee /etc/apt/apt.conf.d/02proxy
        fi
else
        if [[ -f "/etc/apt/apt.conf.d/02proxy" ]]; then
                rm /etc/apt/apt.conf.d/02proxy
        fi
fi
