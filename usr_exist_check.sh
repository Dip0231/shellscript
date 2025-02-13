#!/bin/bash
echo "enter user name :"
read user
chk_user=$(grep -ic $user /etc/passwd)


if [[ chk_user -eq 1 ]];then
	echo "user exist"
else
	echo "user not availble"
fi
