#!/bin/bash

#This script generates a list of random passwords

#Random parametresi sifir ile 32.767 arasinda rastgle bir tamsayi olusturmakta ----> echo ${RANDOM}

#A random number as a password

PASSWORD="${RANDOM}"
echo "${PASSWORD}"


# Three random numbers together

PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

#(Unix timestamp)  1970-01-01  to today "date +%s command"
#Sistem tarihini ve saatini milisaniye cinsiinden bir sayi olarak vermekte, Unix zaman damgasina gore


#Use the current date/time as the basis for the password
PASSWORD="$(date +%s)"
echo "${PASSWORD}"
#1DAY=86400
# %N nanoseconds

#Use nanoseconds to act as randomization
PASSWORD="$(date +%s%N)"
echo "${PASSWORD}"


#A better password
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"

#An even better password

PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c48)
echo "${PASSWORD}"


#Append a special character to the password
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_-+=' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"

#"fold" komutu Dosya içeriğinin satırlarını belirli bir uzunlukta kırarak yeni satırlar oluşturur. -w1 boslugu almiyor 
#"shuf" komutu Dosya içeriğini rastgele bir şekilde karıştırır.









#Bash script dilinde, "head -n 1 /etc/passwd" komutu, /etc/passwd dosyasının ilk satırını görüntüler. 
#Bu dosya, sistemde kayıtlı kullanıcı bilgilerini içeren bir dosyadır ve genellikle Unix ve Linux benzeri işletim sistemlerinde kullanılır.


#"head" komutu, bir dosya veya standart girdiden ilk n satırını görüntüler. "-n" seçeneği, görüntülenecek satır sayısını belirtir.

#head -c2 ilk iki satiri alir.




