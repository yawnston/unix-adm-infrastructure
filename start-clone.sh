#!/bin/bash

# IP: 10.0.X.2/24
# GW: 10.0.0.12
# DNS: 10.0.0.1 or [MY DNS]
# X + 10 + last number of UID (2) so 10.0.0.12

vm_name="crhad-clone"

qemu-system-x86_64 \
	-name "$vm_name" \
	-vnc :84 \
	-drive file=arch_clone_img.raw,format=raw \
	-m 1G \
	-nic vde,sock=/home/crhad/vde-crhad-1.sock,mac=52:54:00:00:12:02 \
	-enable-kvm \
	-daemonize



