#!/bin/bash

echo "Preparing Set Up for your Modem..."

ls /dev > /home/gaby/Files/ShellFiles/myFile.txt

grep "sr." /home/gaby/Files/ShellFiles/myFile.txt > /home/gaby/Files/ShellFiles/op.txt

echo "Please Connect Your Modem Now...."
echo "Oncw Connected wait for 2-3 minutes and then please run modm2.sh in STEP2 FOLDER"

echo "\n Please press Enter to Proceed Next"

read val

