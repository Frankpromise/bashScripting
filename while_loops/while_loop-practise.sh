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

#Write a Bash script that reads a file line by line until it 
#finds a line that contains the word "done".

while read line; do
    #check if the line contains done
    if echo "$line" | grep -q 'done'; then
    echo "Found line with 'done': $line"
    break
    fi
done < file.txt