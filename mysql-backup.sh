#! /bin/bash
 
TIMESTAMP=$(date +"%F")
BACKUP_DIR="/root/backup/$TIMESTAMP"
MYSQL_USER="root"
MYSQL=/usr/bin/mysql
MYSQL_PASSWORD=""
MYSQLDUMP=/usr/bin/mysqldump
 
mkdir -p "$BACKUP_DIR/mysql"
 
databases=`$MYSQL --user=$MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema|performance_schema)"`
 
for db in $databases; do
  $MYSQLDUMP --force --opt --user=$MYSQL_USER -p$MYSQL_PASSWORD --databases $db | gzip > "$BACKUP_DIR/mysql/$db.gz"
done