#! /bin/bash

shopt -s extglob

echo ""
echo "Welcome to User Registration System"
echo "======================================"
echo ""


function validateFirstName()
{
	read -p "Enter first name : " fname

	fnamePattern="^[[:upper:]]+([a-z]{2,})"

	if [[ $fname =~ $fnamePattern ]]
	then
		echo "$fname is valid name"
	else
		echo "$fname is invalid name"
	fi
}
validateFirstName


function validateLastName()
{
	read -p "Enter last name : " lname

        lnamePattern="^[[:upper:]]+([a-z]{2,})"

        if [[ $lname =~ $lnamePattern ]]
        then
                echo "$lname is valid name"
        else
                echo "$lname is invalid name"
        fi
}
validateLastName


function validateEmail()
{
	mailPattern="^[A-Za-z0-9._%+-]+@[a-zA-Z0-9.-]+\.[A-Za-z]{2,6}"

	read -p "Enter email : " email

	if [[ $email =~ $pattern ]]
	then
        	echo "$email is valid mail id"
	else
        	echo "$email is valid mail id"
	fi
}
validateEmail


