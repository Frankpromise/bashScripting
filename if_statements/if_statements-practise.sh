#!/bin/bash

#Write a Bash script that checks if a file exists, and if it does, prints a message to the console.
file=./if_statements.sh

if [ -f $file ]
then
    echo "$file is here"
else
    echo "$file is not here"
fi


#Write a Bash script that prompts the user for their age, and if they are over 18,
#prints a message saying they are eligible to vote, and if they are under 18, 
#prints a message saying they are not eligible to vote"""

# Prompt the user for their age
echo "Please enter your age:"
read age

# Check if the user is over 18
if [ $age -gt 18 ]; then
  echo "You are eligible to vote."
else
  echo "You are not eligible to vote."
fi
