#!/usr/bin/env bash

docker run \
  -d \
  --name "redis" \
  --restart unless-stopped \
  -p 6379:6379 \
  --mount 'type=volume,source=redis_storage,target=/data,volume-driver=local' \
  redis
