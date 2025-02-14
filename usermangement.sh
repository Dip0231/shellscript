#!/bin/bash

checkuser=$(grep -o "$1" /etc/passwd | uniq)

if [[ $1 = $checkuser ]];then
	echo "user exist"
else
	sudo useradd -m "$1"
         read -p "enter passwd:" $2
        echo -e  "$2\n$2" | sudo passwd "$1"

	echo "user created"
fi


#read -p "Enter password :" $2


#sudo useradd -m "$1"

#echo -e  "$2\n$2" | sudo passwd "$1"

#echo "==========user created=========="
