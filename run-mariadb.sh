#!/usr/bin/env bash

docker run \
  -d \
  --name "mariadb" \
  --restart unless-stopped \
  -p 3306:3306 \
  --mount 'type=volume,source=mariadb_storage,target=/var/lib/mysql,volume-driver=local' \
  -e MARIADB_ALLOW_EMPTY_ROOT_PASSWORD=yes \
  mariadb
