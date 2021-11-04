#!/bin/bash

clear

tar cvfz /bkp/backupVar-$(date +%Y-%m-%d).tar.gz --absolute-names /var

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

echo "Respaldo /var Listo!"