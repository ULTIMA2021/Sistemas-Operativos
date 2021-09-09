
mysqldump -u root –p miclave3035 
mibase > mibase.sql 
gzip mibase.sql
mv mibase.sql.gz /bkp/bkp-Mysql

count=`ls /bkp/bkp-Mysql | wc -l`
if [ "$count" -gt "3" ] then

	rm "$(ls -t | tail -1)"