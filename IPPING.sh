#!/bin/bash

online=0
offline=0

for i in 10.93.162.{1..255} 
do
	if `ping -c 3 $i`
	then
	echo $i
	let "online+1"

	echo $i >>lis_online.txt
	else
	
	echo $i
	let "offline+1"
	echo $i >>list_offline.txt
fi 
echo "on a $online utilisateurs en ligne et $offline hors ligne"

done
