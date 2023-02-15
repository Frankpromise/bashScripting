#!/bin/bash

package=htop

sudo apt install $package >> package_install.logs

if [ $? -eq 0 ]
then
    echo "The installation of $package was successful"
    echo "The new command is available here:"
    which $package
else
    echo "$package failed to install with exit code $?" >> package_install.logs
fi



directory=/etc

if [ -d $directory ]
then
    echo "The $directory exist"
else
    echo "$directory does not exist"
fi

echo "The exit code for this run is $?"


#when you have control over what the exit code will be

echo "Hello world"
exit 199