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
