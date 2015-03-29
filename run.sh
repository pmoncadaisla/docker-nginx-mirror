#!/bin/bash

BASENAME_FILE=$(basename $URL_FILE)
NGINX_HOME=/usr/share/nginx/html

wget $URL_FILE -o  $NGINX_HOME/$BASENAME_FILE

nginx

tail -f /var/log/nginx/access.log
