#!/usr/bin/env bash

#Parsing DB Cedientials from Heroku //TODO enclose in an if
IFS=:@/ read uname pass host dbname<<< ${CLEARDB_DATABASE_URL:8:-15}

#dumping the DB //TODO check if file exists //TODO check if the database already exists on ClearDB
mysql --user=$uname --password=$pass --host=$host $dbname < /root/db.sql

echo Changing Apache port to $PORT


a2dismod mpm_event;
sed -i "s/80/$PORT/" /etc/apache2/ports.conf;
sed -i "s/80/$PORT/" /etc/apache2/sites-enabled/000-default.conf; 
apache2-foreground;
