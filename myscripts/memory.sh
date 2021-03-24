#!/bin/bash
 # MemUsed = Memtotal + Shmem - MemFree - Buffers - Cached - SReclaimable
 memused (){
MemTotal=$(cat /proc/meminfo | grep MemTotal | awk '{print $2}')
MemFree=$(cat /proc/meminfo | grep MemFree | awk '{print $2}')
Buffers=$(cat /proc/meminfo | grep Buffers | awk '{print $2}')
SReclaimable=$(cat /proc/meminfo | grep SReclaimable | awk '{print $2}')
Cached=$(cat /proc/meminfo | grep -w Cached | awk '{printf $2}')
Shmem=$(cat /proc/meminfo | grep -w Shmem | awk '{printf $2}')

MemUsed="$((MemTotal+Shmem-MemFree-Buffers-Cached-SReclaimable))" 
realmem="$((MemUsed/ 1024))"
printf "%s" $realmem
}

memused






