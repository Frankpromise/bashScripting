#!/bin/bash

mynum=300

if [ $mynum -eq 200 ]
then
    echo "The condition is true."
else
    echo "The variable does not equal 200"
fi


if [ $mynum -ne 200 ]
then
    echo "The condition is true."
else
    echo "The variable does not equal 200"
fi

if [ $mynum -gt 200 ]
then
    echo "The condition is true."
else
    echo "The variable does not equal 200"
fi

# check if a file exist
if [ -f ~/myfile ]
then
    echo "The file exist"
else
    echo "The file does not exist"
fi


command=/usr/bin/htop

if [ -f $command ]
then
    echo "$command is present"
else
    echo "$command is not available.... Installing"
    sudo apt update && sudo apt install -y htop
fi

$command


command=htop

if command -v $command
then
    echo "$command is present"
else
    echo "$command is not available.... Installing"
    sudo apt update && sudo apt install -y $command
fi

$command