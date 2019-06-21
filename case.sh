#!/bin/bash

msg_level=$1
msg_itself=$2

if [ $msg_level -le $LOG_LEVEL ]; then
	case $msg_level in
		0) msg_level_text="Error";;
		1) msg_level_text="Warning";;
		2) msg_level_text="Info";;
		3) msg_level_text="Debug";;
	esac
	echo "${msg_level_text}:$msg_itself"
fi
