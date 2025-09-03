#!/bin/bash

#Script to show how to use variables.
 a=10
 name="Lavya"
 age=20

 echo "My name is $name and age is $age"

 name="Lavyyy"

 echo "Now my name is $name"
# In this the value of variable is updated to Lavyyy

# If you want ot store the output of a command to a variable.

my_host=$(hostname)
echo "Name of my machine is $my_host"
#dont leave space in assigning in bash as i almost lost my mind founding where the error really is.Because of that, bash thinks my_host is a command and tries to run it, causing:
#variables_02.sh: line 16: my_host: command not found

echo "Name of my machine is $my_host"

# And if you dont have hostname command in your system insatll it.

# For Arch Linux /Manjiro
#sudo pacman -S inetutils

#For Ubuntu/Debian
#sudo apt install inetutils-hostname


#CONSTANT VARIABLES
# Once you ddefined a variable and dont want to chnage it until the end of the script.

readonly fav_food="DOSA"

echo "MY all-time fav food is $fav_food"

#if u try fav_food="IDLI SAMBHAR" it wont chnage and will throw a error that it is a readonly variable (as no one can chnage my love for DOSA.)


