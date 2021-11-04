#!/bin/bash

clear

while [ "$op" != "0" ]
do	
	echo -e "\n******SERVICIOS DE RED******"
	echo -e "\n1. Verificar interfaz."
	echo -e "\n2. Reiniciar servicio de red."
	echo -e "\n3. Verificar servidor ssh."
	echo -e "\n4. Reiniciar servicio ssh."
	echo -e "\n5. Configurar puerto ssh en firewall."
	echo -e "\n6. Reiniciar firewall."
	echo -e "\n0. Volver."
	echo
	read -p "OPCION: " op;

	case $op in

		1) systemctl status network.service
			;;

		2) systemctl restart network.service
			echo -e "\nListo!"
			;;

		3) systemctl status sshd
			;;

		4) systemctl restart sshd
			echo -e "\nListo!"
			;;

		5)	echo 
			read -p "Ingrese el numero del puerto ssh: " puerto;
			firewall-cmd --permanent --add-port=$puerto/tcp
			echo -e "\nListo!"
			;;

		6) firewall-cmd --reload
			echo -e "\nListo!"
			;;

		0) exit ;;
		
		*) echo -e "Opcion incorrecta!"
			;;

	esac
done					














