#!/bin/bash
clear


while [ "$op" != "0" ]
do

echo -e "\n****** Registro de logins. *****"
echo -e "\n1. Intentos de ingresos fallidos."
echo -e "\n2. Ingresos al sistema."
echo -e "\n3. Usuarios actualmente en el sistema."
echo -e "\n4. Mensajes del sistema."
echo -e "\n5. Mensajes del servicio samba."
echo -e "\n6. Mensajes de seguridad."
echo -e "\n7. Tareas Cron."
echo -e "\n0. Salir"
echo -e "\nOPCION: "
read op;


case $op in

1) last -f /var/log/btmp
	read -p "Presione una tecla para continuar...";;
2) last -f /var/log/wtmp
	read -p "Presione una tecla para continuar...";;
3) last -f /var/run/utmp
	read -p "Presione una tecla para continuar...";;
4) cat /var/log/messages
	read -p "Presione una tecla para continuar...";;
5) cat /var/log/samba
	read -p "Presione una tecla para continuar...";;
6) cat /var/log/secure
	read -p "Presione una tecla para continuar...";;
7) cat /var/log/cron
	read -p "Presione una tecla para continuar...";;
0) exit;;
*) echo "Opcion incorrecta!";;
esac

done

