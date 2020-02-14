#!/bin/bash  -x
echo "Welcome To User Registration"
#Constants
VALID_NAME_PATTERN="^[A-Z]{1}[a-zA-Z]{2,}$"

function validationCheck() {
	userInput=$1
	validationPattern=$2
	if [[ $userInput =~ $validationPattern ]]
	then
		echo $userInput
	else
		echo "Invalid Input \" $userInput \""
		exit
	fi
}

read -p "Enter First Name : " firstName
validationCheck $firstName $VALID_NAME_PATTERN
read -p "Enter Last Name : " lastName
validationCheck $lastName $VALID_NAME_PATTERN
