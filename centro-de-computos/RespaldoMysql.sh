#!/bin/bash

sql=".sql"
echo
read -p "Ingrese la base de datos que desea respaldar: " base;
echo

if [ -d /var/lib/mysql/$base ]
then
        read -p "Usuario: " usuario;
        mysqldump -u $usuario -p $base > /bkp/bkp-DB-$base-$(date +%Y-%m-%d)$sql
        echo "Respaldo de Base de datos Listo!"


else
        echo "La base de datos no existe"
fi

read -n 1 -s -r -p "Presione ENTER para continuar..."
