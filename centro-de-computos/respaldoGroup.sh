#!/bin/bash

cp /etc/group /etc/groupBackup 
gzip /etc/groupBackup 
mv /etc/groupBackup.gz /bkp/bkp-group 

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

echo "Respaldo /etc/group Listo!"
read -n 1 -s -r -p "Presione una tecla para continuar..."