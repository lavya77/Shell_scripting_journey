#!/bin/bash

#Array

#An array is a single variable that can hold multiple values, indexed by number (starting from 0).

#How to define an array?
myArray=(1 2 20 30.5 Hello "Hello String")

#to access value

echo "${myArray[3]}"
echo "${myArray[4]}"

echo "All the values in array are ${myArray[*]}"

#How to get the length of the array

echo "Length of an array is ${#myArray[*]}"


# How to get specifi values

echo "${myArray[*]:1}"
echo "${myArray[*]:1:2}"

#values of index 2 and 3.

echo "${myArray[*]:2:2}"

# so basicaaly if you are confused it is, ${your_array_name[*]:from_which_index_you_want:how _many_values_you_want}

# How to update an array?

myArray+=(Lavya 20 7 Shash)

echo "Values of new array are ${myArray[*]}"

#ARRAY KEY-VALUE

#DECLARE
#the declare builtin is used to create variables with specific attributes.
#“Create my_array as an associative array.”
#declare -a arr  -> Indexed array (numeric keys)
#declare -A arr ->  Associative array (string keys)
#declare var=value  -> Normal variable with optional attributes
#Treat the variable as an integer (auto does arithmetic). -> declare -i num=5+3; echo $num → 8#Make the variable read-only (cannot change later). -> declare -r PI=3.14
#Export the variable (make it available to child processes).-> declare -x PATH="$PATH:/new/path"
# Always convert value to lowercase when assigning. -> declare -l name="LAVYA"; echo $name → lavya
# Always convert value to UPPERCASE when assigning. -> declare -u city="delhi"; echo $city → DELHI
#Print variable attributes and values (debugging). -> declare -p name

declare -A array
array=([name]=Lavya [age]=20)

echo "${array[name]}"
echo "${array[*]}"
