#!/bin/bash

# IP: 10.0.0.X/24
# GW: 10.0.0.1
# DNS: 10.0.0.1
# X + 10 + last number of UID (2) so 10.0.0.12?
# MAC addr: 52:54:00:36:12:01

# set high VNC port

vm_name="crhad-router"

qemu-system-x86_64 \
	-name "$vm_name" \
	-vnc :83 \
	-drive file=arch_img.raw,format=raw \
	-m 1G \
	-nic vde,sock=/tmp/vde-backbone.sock,mac=52:54:00:36:12:01 \
	-nic vde,sock=/home/crhad/vde-crhad-1.sock,mac=52:54:00:00:12:01 \
	-enable-kvm \
	-daemonize



