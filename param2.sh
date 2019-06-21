#!/bin/bash

function show_usage {
	echo "Usage: $0 source_dir dest_dir"
	if [ $# -eq 0 ]; then
		printf "No error hint\n"
	else
		printf "$1 \n"
	fi
	exit 1
}

# Main program starts here

if [ $# -ne 2 ]; then
	show_usage
else
	if [ -d $1 ]; then
		source_dir=$1
	else
		show_usage "$1 Invalid source directory"
	fi
	if [ -d $2 ]; then
		dest_dir=$2
	else
		show_usage "$2 Invalid destination directory"
	fi
fi

printf "Source directory is ${source_dir}\n"
printf "Destination directory is ${dest_dir}\n"
