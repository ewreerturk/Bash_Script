#!/bin/bash
#Author: Emre Erturk


#Dosya ve klasörleri listele/List files and folders
echo -e "24 saat icinde degisiklik yapilmamis dosyalar"
echo "____________________________________________________"
find /tmp -name 'drive*'  -mtime -1
echo -e "\n"

files=$(find /tmp -name 'drive*' -mtime -1)

#Kullanıcıdan silmek isteyip istemediğini soruyoruz/ask the user if they want to delete
read -p "Silmek istiyor musunuz? (1 = evet, 2 = hayir) " choice

#Kullanıcının seçimine göre işlem yap/take action according to users choice
if [ "$choice" -eq "1" ]; then
#Dosya ve klasörleri silin/remove files and folders
  rm -rf $files
else
#Script'ten çık/exit to script
  exit
fi