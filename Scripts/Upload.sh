#!/bin/bash

sshpass -p password ssh -oStrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null "k3-user@$1" -q sudo rm -Rf /mnt/Modules/TouchTest 2>/dev/null

dstpath=k3-user@$1:/mnt/Modules/TouchTest
if [ ! -e $dstpath ]; then
	sshpass -p password ssh -oStrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null "k3-user@$1" -q sudo mkdir $dstpath 2>/dev/null
fi

cmd="sshpass -p password scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o LogLevel=error -r $2 $dstpath"
echo $cmd
eval $cmd

cmd="sshpass -p password ssh -oStrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null "k3-user@$1" -q sudo chmod 777 /mnt/Modules/TouchTest/TouchTest.x86_64"
echo $cmd
eval $cmd
