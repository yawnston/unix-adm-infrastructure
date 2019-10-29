#!/bin/bash

# Kill all running VMs

vms=0

ps aux | grep crhad | grep qemu-system-x86_64 | grep -v grep |  while read line
do
	echo "$line" | awk '{print $2}' | xargs kill
	let "vms++"
done
echo "$vms machines killed."
