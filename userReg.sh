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
	echo ""
	read -p "Enter last name : " lname

        lnamePattern="^[[:upper:]]{1}([a-z]{2,})"

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
	echo ""
	mailPattern="^[A-Za-z0-9._%+-]+@[a-zA-Z0-9.-]+\.[A-Za-z]{2,6}"

	read -p "Enter email : " email

	if [[ $email =~ $mailpattern ]]
	then
        	echo "$email is valid mail id"
	else
        	echo "$email is valid mail id"
	fi
}
validateEmail


function validateMobile()
{
	echo ""
        read -p "Enter mobile number with country code : " mob

        mobPattern="^[0-9]{2}[[:space:]]([0-9]{10})$"

        if [[ $mob =~ $mobPattern ]]
        then
                echo "$mob is valid number"
        else
                echo "$mob is not valid number"
        fi
}
validateMobile


function validatePassword()
{
	echo ""
	passPattern1="^([a-zA-Z0-9@#!]){8,}$"
	passpattern2="^([a-z0-9@#!]*)[A-Z]+([a-z0-9@#!]*)$"
	passpattern3="^[a-zA-Z@#!]*[0-9]+[a-zA-Z@#!]*$"

	read -p "Enter password : " pwd

	if [[ $pwd =~ $passPattern ]]
	then
		if [[ $pwd =~ $passPattern2 ]]
		then
			if [[ $pwd =~ $passPattern2 ]]
	                then
				echo "$pwd is valid password"
			else
				echo "Password must contain at least 1 number"
			fi
		else
			echo "Password must contain atleast 1 upper case"
		fi
	else
		echo "Password must contain minimum 8 characters"
	fi
}
validatePassword
