#!/usr/bin/env bash

docker run \
  -d \
  --name "elasticsearch" \
  --restart unless-stopped \
  -p 9200:9200 \
  -e "discovery.type=single-node" \
  -e "cluster.name=elasticsearch-rails" \
  -e "cluster.routing.allocation.disk.threshold_enabled=false" \
  -e "http.cors.enabled=true" \
  -e "http.cors.allow-origin=https://app.elasticvue.com" \
  -e "xpack.security.enabled=false" \
  --mount 'type=volume,source=elasticsearch_storage,target=/usr/share/elasticsearch/data,volume-driver=local' \
  docker.elastic.co/elasticsearch/elasticsearch:7.15.0
