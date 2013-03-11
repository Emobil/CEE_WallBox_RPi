#! /bin/bash

i2cset -y 0 0x10 0x01 0x16 b
#sleep 0.5
#i2cset -y 0 0x10 0x20
#sleep 0.5
while true
do
clear
#i=0
#while [ $i -lt 10 ]
#do
#	i2cget -y 0 0x10 $i
#	#i2cdetect -y 0
#	(( i++ ))
#done
	low="$(i2cget -y 0 0x10 0x03)"
	high="$(i2cget -y 0 0x10 0x02)"
	echo S0_1: $(($high<<8))$(($low))
	
	low="$(i2cget -y 0 0x10 0x05)"
	high="$(i2cget -y 0 0x10 0x04)"
	echo S0_2: $((high<<8))$(($low))


sleep 1
done
