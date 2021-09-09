#!/bin/bash 
cp /etc/passwd /etc/passwdBackup 
gzip /etc/passwdBackup 
mv /etc/passwdBackup.gz /bkp/bkp-Semanal  
#Respaldo /etc/group 
cp /etc/group /etc/groupBackup 
gzip /etc/groupBackup 
mv /etc/groupBackup.gz /bkp/bkp-Semanal   
#Respaldo /etc/shadow 
cp /etc/shadow /etc/shadowBackup 
gzip /etc/shadowBackup 
mv /etc/shadowBackup.gz /bkp/bkp-Semanal   
#Respaldo /etc/gshadow 
cp /etc/gshadow /etc/gshadowBackup 
gzip /etc/gshadowBackup 
mv /etc/gshadowBackup.gz /bkp/bkp-Semanal   
#Respaldo /etc/login.defs 
cp /etc/login.defs /etc/login.defsBackup 
gzip /etc/login.defsBackup 
mv /etc/login.defsBackup.gz /bkp/bkp-Semanal 
#Respaldo /etc/default/useradd 
cp /etc/default/useradd /etc/default/useraddBackup 
gzip /etc/default/useraddBackup 
mv /etc/default/useraddBackup.gz /bkp/bkp-Semanal 

#Respaldo /samba
cp /samba /sambaBackup
gzip /sambaBackup 
mv /sambaBackup.gz /bkp/bkp-Semanal 

#Respaldo /etc/skel 
tar cvfz /bkp/bkp-Semanal/backupSkel-$(date +%Y-%m-%d).tar.gz /etc/skel 
#Respaldo /home 
tar cvfz /bkp/bkp-Semanal/backupHome-$(date +%Y-%m-%d).tar.gz /home 
#Respaldo Proyecto 
tar cvfz /bkp/bkp-Semanal/backupProyecto-$(date +%Y-%m-%d).tar.gz /home/Scripts/Ultima 

#Respaldo /bkp-etc
tar cvfz /bkp/bkp-Semanal-Completo/bkp-Semanal-$(date +%Y-%m-%d).tar.gz /bkp/bkp-Semanal
mkdir -p /bkp/bkp-Semanal


count=`ls /bkp/bkp-Semanal-Completo/ | wc -l`
if [ "$count" -gt "3" ] then

	rm "$(ls -t | tail -1)"