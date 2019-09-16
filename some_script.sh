mysql -D bet < /home/bet.dmp
mysql -e "CREATE USER 'repl'@'%' IDENTIFIED BY 'password';"
mysql -e " GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%' IDENTIFIED BY 'password';"
#mysqldump --all-databases --triggers --routines --master-data --ignore-table=bet.events_on_demand --ignore-table=bet.v_same_event -u root -p"password" > /home/