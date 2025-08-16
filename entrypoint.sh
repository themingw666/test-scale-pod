#!/bin/sh

COLOR=$(openssl rand -hex 3)

sed "s/{COLOR}/#${COLOR}/g" /index.html > /usr/local/apache2/htdocs/index.html

# Config for Heroku
PORT=${PORT:-80}
sed -i "s/^Listen .*/Listen ${PORT}/" /usr/local/apache2/conf/httpd.conf

exec httpd-foreground