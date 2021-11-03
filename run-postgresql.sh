#!/usr/bin/env bash

docker run \
  -d \
  --name "postgresql" \
  --restart unless-stopped \
  -p 5432:5432 \
  --mount 'type=volume,source=postgresql_storage,target=/var/lib/postgresql/data,volume-driver=local' \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_DB=postgres \
  -e POSTGRES_PASSWORD=postgres \
  postgres:14
