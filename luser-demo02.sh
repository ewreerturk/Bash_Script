#!/bin/bash

#Display the UID and username of the user executing this script

#Display if user is the root user or not

#Display the UID
echo "Your UID is ${EUID}"
#echo "Your ID is $(id -un)" 
#yukaridaki komut $(###) komut satirinda bir sey yapistirir gibi 
#Dispaly the username
USER_NAME=$(id -un) #USER_NAME=`id -un`

echo "Your user name is ${USER_NAME}"
#Display if the user is the root user or not

if [[ "${UID}" -eq 0 ]]
then  
    echo 'You are root'
else
    echo 'You are not root'
fi