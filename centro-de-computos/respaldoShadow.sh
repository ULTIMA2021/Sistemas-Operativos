#!/bin/bash

cp /etc/shadow /etc/shadowBackup 
gzip /etc/shadowBackup 
mv /etc/shadowBackup.gz /bkp/bkp-shadow

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

echo "Respaldo /etc/shadow Listo!"
read -n 1 -s -r -p "Presione una tecla para continuar..."