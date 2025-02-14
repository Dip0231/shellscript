#!/bin/bash

function create-user {

 read -p "enter the username:" username 

 sudo useradd $username

 echo "user created suuccflly"

}

create-user
create-user
