#!/bin/sh
# taken from neofetch 

dwm_resources () {
	# get all the infos first to avoid high resources usage
	# Used and total memory
    MemTotal=$(cat /proc/meminfo | grep MemTotal | awk '{print $2}')
    MemFree=$(cat /proc/meminfo | grep MemFree | awk '{print $2}')
    Buffers=$(cat /proc/meminfo | grep Buffers | awk '{print $2}')
    SReclaimable=$(cat /proc/meminfo | grep SReclaimable | awk '{print $2}')
    Cached=$(cat /proc/meminfo | grep -w Cached | awk '{printf $2}')
    Shmem=$(cat /proc/meminfo | grep -w Shmem | awk '{printf $2}')
    MemUsed="$((MemTotal+Shmem-MemFree-Buffers-Cached-SReclaimable))"
    MEMTOT="$((MemTotal/1024))"
    MEMUSED="$((MemUsed/ 1024))"
	# CPU temperature
	CPU=$(top -bn1 | grep Cpu | awk '{print $2}')%
	CPUT=$(sensors | grep Package | awk '{printf $4}')

            printf "[MEM %s/%s][CPU %s [%s]]" "$MEMUSED" "$MEMTOT" "$CPU" "$CPUT" 

}

dwm_resources
