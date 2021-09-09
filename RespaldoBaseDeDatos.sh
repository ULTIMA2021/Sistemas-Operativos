
mysqldump -u root –p miclave3035 
mibase > mibase.sql 
gzip mibase.sql
mv mibase.sql.gz /bkp/bkp-Mysql