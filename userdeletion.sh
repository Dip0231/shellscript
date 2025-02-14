#!/bin/bash

read -p "enter the username:" username 

sudo userdel $username

echo "====== Deletion user complited"

cat /etc/passwd | grep $username | wc 

echo "as wc is 0 the user is deleted"
