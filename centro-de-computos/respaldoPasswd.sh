#!/bin/bash

cp /etc/passwd /etc/passwdBackup 
gzip /etc/passwdBackup 
mv /etc/passwdBackup.gz /bkp/bkp-passwd 

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

echo "Respaldo /etc/passwd Listo!"
read -n 1 -s -r -p "Presione una tecla para continuar..."