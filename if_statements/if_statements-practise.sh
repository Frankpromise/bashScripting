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


#Write a Bash script that takes a string as input, and checks 
#if the string contains the word "hello". If it does, the script should print a message saying 
#"Found hello", and if it doesn't, 
#the script should print a message saying "Did not find hello".

echo "Please enter a word"
read word
if [[ $word == *"hello"* ]];
then
    echo "found $word"
else
    echo "Did not find $word"
fi

#Write a Bash script that checks if a command line argument is a directory, 
#and if it is, prints a message saying "Argument is a directory", 
#and if it isn't, prints a message saying "Argument is not a directory".


# Check if a command line argument was provided
if [ $# -eq 0 ]; then
  echo "No argument provided"
  exit 1
fi

# Check if the argument is a directory
if [ -d "$1" ]; then
  echo "Argument is a directory"
else
  echo "Argument is not a directory"
fi


#Write a Bash script that checks if a variable is empty, and if it is, prints a message saying 
#"Variable is empty", and if it isn't, prints the value of the variable.

# Set a variable
my_variable=2

# Check if the variable is empty
if [ -z "$my_variable" ]; then
  echo "Variable is empty"
else
  echo "Variable value is: $my_variable"
fi


echo "exit $?"