#!/bin/bash
 
IF=$1
STATUS=$2
 
if [ "$IF" == "<interface name>" ]
then
	case "$2" in
		up)
		<path/to/script>
		logger -s "setting proxy for network"
		command1
		;;
		*)
		;;
	esac
fi
