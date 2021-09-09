
cp /samba /sambaBackup
gzip /sambaBackup 
mv /sambaBackup.gz /bkp/bkp-samba

count=`ls /bkp/bkp-samba | wc -l`
if [ "$count" -gt "3" ] then

	rm "$(ls -t | tail -1)"