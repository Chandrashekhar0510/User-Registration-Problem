#! /bin/bash

shopt -s extglob

echo ""
echo "Welcome to User Registration System"
echo "======================================"
echo ""

read -p "Enter first name : " fname

fnamePattern="^[[:upper:]]+([a-z]{2,})"

if [[ $fname =~ $fnamePattern ]]
then
	echo "Valid name"
else
	echo "Invalid name"
fi
