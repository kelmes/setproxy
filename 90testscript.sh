#!/bin/bash
 
IF=$1
STATUS=$2
 
if [ "$IF" == "wlp4s0" ]
then
	case "$2" in
		up)
		/home/kieran/src/setproxy.sh
		logger -s "setting proxy for network"
		command1
		;;
		*)
		;;
	esac
fi
