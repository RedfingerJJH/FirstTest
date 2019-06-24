#!/bin/bash

suffix=BACKUP--`date +%Y%m%d-%H%M`

for script in *.sh; do
	newname="$script.$suffix"
	echo "Copying $script to $newname..."
#	cp $script $newname
done

for (( i=0; i<10; i++)); do
	echo "CPU_LIST$i"
done
