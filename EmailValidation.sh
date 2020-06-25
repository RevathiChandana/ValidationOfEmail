#!/bin/bash
shopt -s extglob
echo "To check email validation"
read -p " enter a valid first name : " first_name
print_valid_First_name()
{
        if [[ $1 =~ ^([A-Z]{1}+[a-z0-9]{3,})$ ]]
        then
                echo "first name is validate."
        else
                echo "first name is not validate."
        fi
}
print_valid_First_name $first_name
read -p " enter a valid last name : " last_name
print_valid_last_name()
{
        if [[ $1 =~ ^([A-Z]{1}+[a-z0-9]{3,})$ ]]
        then
                echo "last name is validate."
        else
                echo "last name is not validate."
        fi
}
print_valid_last_name $last_name
read -p " enter email_id : " email_id
print_valid_email_id()
{
        if [[ $1 =~ ^([A-Za-z0-9.-+_]+@[A-Za-z0-9]+\.[A-Za-z]{2,6})$ ]]
        then
                echo "validate"
        else
                echo "not a valid email id."
        fi
}
print_valid_email_id $email_id
read -p " enter mobile number using format  : " mobile_number
valid_mobile_number()
{
        if [[ $1 =~ ^([+]{1}[91]{2}[[:space:]][0-9]{10})$ ]]
        then
                echo "valid mobile number"
        else
                echo "not a valid mobile number."
        fi
}
valid_mobile_number $mobile_number
read -p " enter password  : " password
valid_password()
{
        if [[ $1 =~ ^([a-zA-Z0-9@#!]){8,}$ ]]
        then
                if [[ $1 =~ ^([a-z0-9@#!]*)[A-Z]+([a-z0-9@#!]*)$ ]]
                then
                        if [[ $1 =~ ^[a-zA-Z@#!]*[0-9]+[a-zA-Z@#!]*$ ]]
                        then
                                if [[ $1 =~ ^([a-zA-Z0-9]*)[^a-zA-Z_0-9\s]([a-zA-Z0-9]*)$ ]]
                                then
                                        echo "valid password"
                                else
                                        echo "atleast one special character required in password"
                                fi
                        else
                                echo "atleast one numeric number is required in password"
                        fi
                else
                        echo "password must have atleast one capital"
                fi
        else
                echo "password sholud contain minimum 8 characters"                                                             fi
	fi
}
valid_password $password
