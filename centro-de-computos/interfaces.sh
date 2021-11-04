#!/bin/bash

clear

while [ "$op" != "0" ]
do	
	echo -e "\n******ADMINISTRAR INTERFACES******"
	echo -e "\n1. Listar configuracion de red."
	echo -e "\n2. Ingresar IP address."
	echo -e "\n3. Ingresar Netmask."
	echo -e "\n4. Ingresar Gateway."
	echo -e "\n5. Ingresar Bootproto."
	echo -e "\n6. Ingresar valor a ONBOOT."
	echo -e "\n0. Volver."
	echo
	read -p "OPCION: " op;

	case $op in 
		1) echo -e "Tarjetas de red: \n" 
			#ip addr
			ls /etc/sysconfig/network-scripts/ifcfg-*
			echo
			read -p "Ingrese tarjeta de red: " red;
			cat /etc/sysconfig/network-scripts/ifcfg-$red
			read -n 1 -s -r -p "Presione una tecla para continuar..."
			;;
		2) echo -e "Tarjetas de red: \n" 
			#ip addr
			ls /etc/sysconfig/network-scripts/ifcfg-*
			echo
			read -p "Ingrese tarjeta de red a modificar: " red;
			echo -e "\nDatos actuales: \n"
			grep -E "IPADDR|NETMASK|GATEWAY" /etc/sysconfig/network-scripts/ifcfg-$red
			echo
			read -p "Ingrese tarjeta de red a modificar: " red; 
			read -p "Ingrese IPADDR actual: " ipAntigua;
			read -p "Ingrese una nueva IPADDR address: " ipNueva;
			sed -i "s/$ipAntigua/$ipNueva/g" /etc/sysconfig/network-scripts/ifcfg-$red
			echo "IPADDR ingresada: " $ipNueva 
			read -n 1 -s -r -p "Presione una tecla para continuar..."

			;;

		3) echo -e "Tarjetas de red: \n" 
			#ip addr
			ls /etc/sysconfig/network-scripts/ifcfg-*
			echo
			read -p "Ingrese tarjeta de red a modificar: " red;
			echo -e "\nDatos actuales: \n"
			grep -E "IPADDR|NETMASK|GATEWAY" /etc/sysconfig/network-scripts/ifcfg-$red
			echo
			read -p "Ingrese tarjeta de red a modificar: " red; 
			read -p "Ingrese NETMASK actual: " netmaskAntigua;
			read -p "Ingrese una nueva NETMASK: " netmaskNueva;
			sed -i "s/$netmaskAntigua/$netmaskNueva/g" /etc/sysconfig/network-scripts/ifcfg-$red
			echo "NETMASK ingresada: " $netmaskNueva
			read -n 1 -s -r -p "Presione una tecla para continuar..."
			;;	

		4) echo -e "Tarjetas de red: \n" 
			#ip addr
			ls /etc/sysconfig/network-scripts/ifcfg-*
			echo
			read -p "Ingrese tarjeta de red a modificar: " red;
			echo -e "\nDatos actuales: \n"
			grep -E "IPADDR|NETMASK|GATEWAY" /etc/sysconfig/network-scripts/ifcfg-$red
			read -p "Ingrese GATEWAY actual: " gatewayAntigua;
			read -p "Ingrese nueva GATEWAY: " gatewayNueva;
			sed -i "s/$gatewayAntigua/$gatewayNueva/g" /etc/sysconfig/network-scripts/ifcfg-$red
			echo "GATEWAY ingresada: " $gatewayNueva
			read -n 1 -s -r -p "Presione una tecla para continuar..."
			;;
		
		5) echo -e "Tarjetas de red: \n" 
			#ip addr
			ls /etc/sysconfig/network-scripts/ifcfg-*
			echo
			read -p "Ingrese tarjeta de red a modificar: " red; 
			echo -e "\nDatos actuales: \n"
			grep -E "BOOTPROTO|IPADDR|NETMASK|GATEWAY" /etc/sysconfig/network-scripts/ifcfg-$red
			read -p "Ingrese BOOTPROTO actual: " bootprotoAntiguo;
			read -p "Ingrese nuevo BOOTPROTO: " bootprotoNuevo;
			sed -i "s/$bootprotoAntiguo/$bootprotoNuevo/g" /etc/sysconfig/network-scripts/ifcfg-$red
			echo "BOOTPROTO ingresado: " $bootprotoNuevo
			read -n 1 -s -r -p "Presione una tecla para continuar..."
			;;

		6) echo -e "Tarjetas de red: \n" 
			#ip addr
			ls /etc/sysconfig/network-scripts/ifcfg-*
			echo
			read -p "Ingrese tarjeta de red a modificar: " red; 
			echo -e "\nDatos actuales: \n"
			grep -E "BOOTPROTO|IPADDR|NETMASK|GATEWAY|ONBOOT" /etc/sysconfig/network-scripts/ifcfg-$red
			read -p "Ingrese ONBOOT actual: " onbootAntiguo;
			read -p "Ingrese nuevo ONBOOT: " onbootNuevo;
			sed -i "s/$onbootAntiguo/$onbootNuevo/g" /etc/sysconfig/network-scripts/ifcfg-$red
			echo "ONBOOT ingresado: " $onbootNuevo
			read -n 1 -s -r -p "Presione una tecla para continuar..."
			;;
			

		0) exit
			;;

		*) echo "Opcion incorrecta!"
			read -n 1 -s -r -p "Presione una tecla para continuar..."
			;;
	esac						

done
