#!/usr/bin/env bash

docker run \
  -d \
  --name "mysql" \
  --restart unless-stopped \
  -p 3306:3306 \
  --mount 'type=volume,source=mysql_storage,target=/var/lib/mysql,volume-driver=local' \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
  mysql/mysql-server:8.0
