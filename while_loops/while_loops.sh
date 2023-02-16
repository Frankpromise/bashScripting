#!/bin/bash

myvar=1

while [ $myvar -le 10 ]; do
    echo $myvar
    myvar=$(( $myvar +1 ))
    sleep 0.5
done

# test for the existence of a file
while [ -f ~/testfile ]
do
    echo "as of $(data), The file exist"
done

echo "as of $(date) the file no longer exist"


