#!/bin/sh

#Get cpu usage
getCpu(){
    CPU=`top -n 2 -b -d 1 | grep Cpu | tail -n 1`
    IFS=','
    set -- $CPU
    return $4 | sed -e "s/\Cpu(s): //" | sed -e "s/\Cpu(s): //" | sed -e "s/.id//"
}

getCpu
echo $?