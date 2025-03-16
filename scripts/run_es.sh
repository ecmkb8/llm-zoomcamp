#!/bin/zsh

echo "Starting Elasticsearch Docker container..."

docker run -it \
    --rm \
    --name elasticsearch \
    -m 1GB \
    -p 9200:9200 \
    -p 9300:9300 \
    -e "discovery.type=single-node" \
    -e "xpack.security.enabled=false" \
    docker.elastic.co/elasticsearch/elasticsearch:8.17.3