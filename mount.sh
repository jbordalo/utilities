#!/bin/bash

if ! grep -qs 'bordalo-hdd' /proc/mounts; then
	echo "It's not mounted"
	# Create mountpoint
	sudo mkdir /media/jbordalo-desktop/bordalo-hdd
	# Mount disk
	sudo mount /dev/sdb1 /media/jbordalo-desktop/bordalo-hdd
fi

