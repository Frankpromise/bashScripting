#!/bin/bash
release=/etc/os-release
#check for the existence of a directory
if grep -q "Arch" $release
then
    #The host is based on Arch, run the pacman update command
    sudo pacman -Syu
fi

if grep -q "Ubuntu" $release || grep -q "Debian" $release
then
    sudo apt update
    sudo apt dist-upgrade
fi