#!/bin/bash -x
echo "Welcome To User Registration"
#Constants
VALID_FIRST_NAME_PATTERN="^[A-Z]{1}[a-zA-Z]{2,}$"

function validationCheck() {
	userInput=$1
	validationPattern=$2
	if [[ $userInput =~ $validationPattern ]]
	then
		echo $name
	else
		echo "Invalid Input \" $name \""
	fi
}

read -p "Enter First Name : " name
validationCheck $name $VALID_NAME_PATTERN
