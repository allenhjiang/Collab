#!/bin/bash
ARGV=("$@")
ARGC=("$#")
if [ ${ARGC} -ne 1 ]; then
    echo "watch <pid>"
    echo ${ARGC}
    exit
fi
echo ${ARGV}
watch -d -n0.1 "ps -eo ruser,pid,ppid,lwp,psr,args -L|grep qemu|grep ${ARGV}"
