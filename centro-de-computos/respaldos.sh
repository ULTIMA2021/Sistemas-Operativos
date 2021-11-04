#!/bin/bash

clear

while [ "$op" != "0" ]
do	
	echo -e "\n******RESPALDOS******"
	echo -e "\n1. Respaldar /etc/Passwd."
	echo -e "\n2. Respaldar /etc/Shadow."
	echo -e "\n3. Respaldar /etc/Group."
	echo -e "\n4. Respaldar /home."
	echo -e "\n5. Respaldar /var."
	echo -e "\n6. Respaldar Base de datos."
	echo -e "\n0. Volver."
	echo
	read -p "OPCION: " op;

	case $op in 

		1) sh /home/script/respaldoPasswd.sh
			;;

		2) sh /home/script/respaldoShadow.sh
			;;

		3) sh /home/script/respaldoGroup.sh
			;;

		4) sh /home/script/respaldoHome.sh	
			;;

		5) sh /home/script/respaldoVar.sh
			;;

		6) sh /home/script/respaldoMysql.sh
			;;	
		
		0) exit 
			;;

		*) echo -e "\nOpcion incorrecta!"
			read -n 1 -s -r -p "Presione una tecla para continuar..."
			;;

	esac

done



	