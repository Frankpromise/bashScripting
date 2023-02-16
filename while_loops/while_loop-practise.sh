#!/bin/bash
#Write a Bash script that prompts the user for a password until they enter a correct one.
correct_passwords="my_password"
while true; do
    read -s -p "Enter a password: " password
    echo

    if [ "$password" = "$correct_passwords" ];
    then
        echo "Access granted"
        break
    else
        echo "Access denied"
    fi
    done