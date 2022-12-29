#!/bin/bash

#Display the UID and username of the user executing this  script
#Display if the user is the vagrant user ot not 

#Display the UID
echo "Your UID is ${UID}"

#Only display if the UID does not match 1000
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne ${UID_TO_TEST_FOR} ]]
then
    echo "Your UID does not match ${UID_TO_TEST_FOR}."
    exit 1
fi

#Display the username
USER_NAME=$(id -un)

#Test if the command succeeded
if [[ "${?}" -ne 0 ]]
# ${?} son calistirilan komutun cikis durumunu tutan ozel degisken
then
    echo 'The id command did not execute succesfully'
    exit1
fi
echo "Your username is ${USER_NAME}"
#You can use a string test conditional
USER_NAME_TO_TEST_FOR='vagrant'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then
    echo "Your username matches ${USER_NAME_TO_TEST_FOR}"
fi


#Test for != (not equal) for the string

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then 
    echo "Your username does not match ${USER_NAME_TO_TEST_FOR}"
    exit 1
fi
exit 0

#exit1 komutu programin calismasini durdurmak icin kullanilir ve programin calismasini durdurduktan sonra komut satirina donmez
#bu komut bir programin calismasi sirasinda bir hata oldugunda veya bir kosul saglandiginda kullanilabilir
#exit0 komutu programin calismasi sirasinda hicbir hata olmadigini ve programin calismasinin basariyla tamamladigini belirtir


