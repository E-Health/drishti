#!/bin/sh
set -ex

if [ -f "/var/lib/mysql/ibdata1" ]; then
	echo 'MySQL data directory exists'
else
	echo 'MySQL data directory does not exist'

  echo 'Initializing database'
	mysql_install_db --user=root --datadir="/var/lib/mysql" --rpm
	echo 'Database initialized'

  if [ ! -d "/run/mysqld" ]; then
    mkdir -p /run/mysqld
  fi

	tfile=$(mktemp)
  if [ ! -f "$tfile" ]; then
      return 1
  fi

  cat <<-EOF > "$tfile"
		USE mysql;
		FLUSH PRIVILEGES;
		GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;
		UPDATE user SET password=PASSWORD("$MYSQL_ROOT_PASSWORD") WHERE user='root';
		GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
		CREATE DATABASE IF NOT EXISTS \`$MYSQL_DATABASE\` CHARACTER SET utf8 COLLATE utf8_general_ci;
		GRANT ALL ON \`$MYSQL_DATABASE\`.* to '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
	EOF

  /usr/bin/mysqld --user=root --bootstrap --verbose=0 < "$tfile"
  rm -f "$tfile"

	gunzip -c /tmp/openmrs-refapp-database-2.3.1.sql.gz | mysql_embedded -uroot -p$MYSQL_ROOT_PASSWORD openmrs
	rm -f /tmp/openmrs-refapp-database-2.3.1.sql.gz
fi

echo 'Starting server'
exec /usr/bin/mysqld --user=root --console
