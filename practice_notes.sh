#!/bin/bash

#This script generates a random password for each user specified on the command line.

#Display what the user typed on the command line

#######echo "You executed this command: ${0}"
#${0} degiskeni aslinda konumsal bir parametredir ve konumsal parametreler komut satirinin icerigini iceren degiskenlerdi
#basitce dosyayi ./xxxxx.sh diye cagirirsak output = You executed this command: ./xxxxx.sh olarak gozukur
#eger dosyayi dizin belirterek cagirisak, /home/vagrant/test/xxxxx.sh ile outputumuz = You executed this command: /home/vagrant/test/xxxxx.sh olmaktadir

#######echo $(which -a head)
# belirtilen programin ya da komutun sistemde nerede bulundugunu soylemektedir -a kac tane head oldugunu soyler 

#Parola dosyasdinin sadece ilk satirini istiyorsdak
#######echo $(/usr/bin/head -n1 /etc/passwd)

#"basename" komutu, bir dosya yolunun sonundaki dosya adını verir. 
#Örneğin, "basename /usr/local/bin/myscript.sh" komutu, "myscript.sh" değerini döndürür.
#_______________________________________________________________________________________
#"dirname" komutu ise, bir dosya yolunun sonundaki dosya adı hariç kalan kısmı verir. 
#Örneğin, "dirname /usr/local/bin/myscript.sh" komutu, "/usr/local/bin" değerini döndürür.

#Display the path and filename of the script
#######echo "You used $(dirname ${0}) as the path to the $(basename ${0}) script"

#Tell them how many arguments they passed in
#Inside the script they are parameters, outside they are arguments

NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} argument(s) on the command line"

#Make sure they at least supply one argument
if [[ "${NUMBER_OF_PARAMETERS}" -lt 1 ]]
then
    echo "Usage: ${0} USER_NAME [USER_NAME]..."
    exit 1
fi

#Generate and display a password for each parameter
for USER_NAME in "${@}" #Buraya yildiz koyarsak tek bir kullanici olarak alir
do
    PASSWORD=$(date +%s%N | sha256sum | head -c48 )
    echo "${USER_NAME}: ${PASSWORD}"
done


