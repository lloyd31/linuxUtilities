#!/bin/bash

echo "Modem is Getting Ready for Loading...."

arr=$(grep "sr." /home/gaby/Files/ShellFiles/op.txt)

ls /dev > /home/gaby/Files/ShellFiles/myFile.txt

arr2=$(grep "sr." /home/gaby/Files/ShellFiles/myFile.txt)

echo $arr2

flag=0;

for i in $arr
do


for j in $arr2
do 



if [ $i != $j ]
then

flag=1;
myval=$j
break;

fi

done

if [ $flag == "1" ]
then

break;

fi

done

echo $myval

if [ $flag == "1" ] && [ -n $myval ] && [ -e "/dev/$myval" ] && [ ! -d "/dev/$myval" ]
then

echo "File $myval exists"

echo "Mounting\Loading The Modem"

val="/dev/$myval"

sudo mount "$val" '/cdrom'

wine "/cdrom/Idea Net Setter Install.exe"

else

echo "Could Not find any Net Setter Connected. Please connect the Net Setter. \n If the problem still continues, try restarting the Machine."

fi

rm /home/gaby/Files/ShellFiles/op.txt ;
rm /home/gaby/Files/ShellFiles/myFile.txt ;
