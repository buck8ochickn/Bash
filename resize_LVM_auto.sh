#!/bin/bash
#for centos 07 at least
#
#returns free space as a number
pvs --units g |  awk 'NR==2 {print $6}' |  grep -Eo "[0-9.]{1,99}"

#add 6gb to the swap
lvextend -L +6G /dev/mapper/centos-swap
