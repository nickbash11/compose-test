#!/bin/bash

NLOG=/var/log/nginx/access.log
UNQ_IPS=./unq_ips.txt
if [ ! -e "$UNQ_IPS" ]
then
    touch $UNQ_IPS
fi 

for i in $(awk '{print $1}' $NLOG | uniq); # reduce all found IPs to uniq and print one by one
do
	if [[ -z $(grep $i $UNQ_IPS) ]] # grep known IPs from txt file, if it exists there then skip
	then
		echo $i >> $UNQ_IPS # otherwise write as a new one
	fi
done
