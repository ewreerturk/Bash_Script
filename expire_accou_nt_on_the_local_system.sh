#!/bin/bash

#This script creates an account on the local system
#You will prompted for the account name and password

#Ask for the user name
read -p 'Enter the username to create:' USER_NAME

#Ask for the real name
read -p 'Enter the name of the person who this account is for:' COMMENT

#Ask for the password
read -p 'Enter the password to use for the account:' PASSWORD

#Create the user
useradd -c "${COMMENT}" -m ${USER_NAME}
# -c yorum belirtmek icin kullandik ornegin kullanicin gercek adini veya hesapla ilgili bilgiler
# -m bir home dizini yaratmamizi sagladi

#Set the password for the user
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
# --stdin parametresi echo ciktisini password komutuna atmamizi sagladi
#Force password change on first login
passwd -e ${USER_NAME}
# -e expire kullanicin sifresini degistirmeye zorladi

#em*re!1831.