#! /bin/bash

shopt -s extglob

echo ""
echo "Welcome to User Registration System"
echo "======================================"
echo ""


function validateFirstName()
{
	fnamePattern="^[[:upper:]]+([a-z]{2,})"

	if [[ $fname =~ $fnamePattern ]]
	then
		echo "Valid name"
	else
		echo "Invalid name"
	fi
}
read -p "Enter first name : " fname
validateFirstName $fname


function validateLastName()
{
        lnamePattern="^[[:upper:]]+([a-z]{2,})"

        if [[ $lname =~ $lnamePattern ]]
        then
                echo "Valid name"
        else
                echo "Invalid name"
        fi
}
read -p "Enter last name : " lname
validateLastName $lname
