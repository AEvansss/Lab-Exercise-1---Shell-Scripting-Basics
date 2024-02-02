#!/bin/bash
#----------------------------------------------------------------------------------------------------------------#
# Filename : E2_EVANGELISTA.sh #
# Author : April SD. Evangelista #
# Last Modified : 02/02/2024 #
# Description : -- The Bash script prompts the user to input a counting number, calculates sum and product of even 
# numbers up to n, displays them, or halts.  -- #
# Honor Code : This is my own program. I have not received any #
# unauthorized help in completing this work. I have not #
# copied from my classmate, friend, nor any unauthorized #
# resource. I am well aware of the policies stipulated #
# in the handbook regarding academic dishonesty. #
# If proven guilty, I won't be credited any points for #
# this exercise. #
#-------------------------------------------------------------------------------------------------------------#


# This is for checking the arguments
if [ $# -eq 0 ]; then
    >&2 echo "No arguments provided"
    exit 1
fi


# Welcome message
name=$1
echo "Welcome, $name!"


# This while loop is to start the input loop
while true; do


# To read the input
  read -p "Enter a counting number: " n


# To check if number is positive or negative 
  if [ $n -gt 0 ]; then  


# This is to compute the sum and product  
    sum=0
    product=1

    i=2
    while [ $i -le $n ]; do
      sum=$((sum + i))
      product=$((product * i))
      i=$((i + 2))
    done


# This will print the results 
    echo "The sum of even counting numbers up to $n is $sum."
    echo "The product of even counting numbers up to $n is $product."


# This is a else block for negative number
  else
    echo "Oops! $n is not a counting number. Adios!"
    exit 0
  fi
done