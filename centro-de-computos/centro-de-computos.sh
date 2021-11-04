#!/bin/bash

clear

while [ "$op" != "0" ]
do

	echo -e "\n******ADMIN-CENTOS******"
	echo -e "\n1. Admin interfaces."  
	echo -e "\n2. Admin servicios de red."
	echo -e "\n3. Respaldos."
	echo -e "\n4. Logs."
	echo -e "\n5. Crear directorio /bkp."
	echo -e "\n0. Salir."
	echo
	read -p "OPCION: " op;
	

	case $op in

		1) sh /home/script/interfaces.sh
			;;

		2) sh /home/script/serviciosRed.sh
			;;

		3) sh /home/script/respaldos.sh
			;;

		4) sh /home/script/logs.sh
			;;

		5) if [ -d /bkp ]
			then
				echo -e "\nDirectorio bkp ya existe!\n"
			else	
			mkdir /bkp
			echo "Directorio bkp creado!"
			fi
			;;	

		0) exit
			;;

		*) echo "Opcion incorrecta!"
			read -n 1 -s -r -p "Presione una tecla para continuar..."
			;;
	esac							



done	