#!/bin/bash

# If switch is not running, restart it.

switchcmd="vde_switch -daemon -sock /home/crhad/vde-crhad-1.sock"

running=`ps aux | grep crhad | grep "${switchcmd}" | grep -vc grep`

test ${running} -eq 0 && eval "$switchcmd" && echo "Switch started!" || echo "Switch already running!"
