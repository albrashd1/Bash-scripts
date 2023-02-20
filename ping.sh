#!/bin/bash
if [ "$1" = "" ]
then #check for first argument
    echo "IP address not found"
else
    for i in `seq 1 254`; do #ping allhost in the subnet and display only live host
        ping -c 1 $1.$i | grep "64 bytes" | cut -d " " -f4 | sed 's/.$//'
    done
fi
