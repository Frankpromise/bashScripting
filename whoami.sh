#! /bin/bash
# Simple script that says who I am.

WHOAMI=$(whoami)

if [ $WHOAMI == "root" ]; then
        cowsay "I am rooooot!!!"
else
        cowsay "You are $WHOAMI"
fi