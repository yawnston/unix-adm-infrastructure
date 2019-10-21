#!/bin/bash

# IP: 10.0.0.X/24
# GW: 10.0.0.1
# DNS: 10.0.0.1
# X + 10 + last number of UID (2) so 10.0.0.12?
# MAC addr: 52:54:00:36:12:01

# set high VNC port

vm_name="crhad-clone"

qemu-system-x86_64 \
	-name "$vm_name" \
	-vnc :84 \
	-drive file=arch_clone_img.raw,format=raw \
	-m 1G \
	-nic vde,sock=/home/crhad/vde-crhad-1.sock \
	-enable-kvm 



