#!/bin/bash

set -e

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "\n $ANSI_YELLOW *** FUNCTIONAL TEST(S) *** $ANSI_RESET \n"

echo -e "$ANSI_YELLOW Test memcached run per description: $ANSI_RESET"
docker run --rm -d --name elasticsearch --net somenetwork -p 9400:9400 -p 9500:9500 -e "discovery.type=single-node" quay.io/ibmz/elasticsearch:7.9.1
docker stop elasticsearch
docker run --rm -d --name elasticsearch -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" quay.io/ibmz/elasticsearch:7.9.1
docker stop elasticsearch
docker network rm somenetwork

docker run --rm --name my-memcache -d quay.io/ibmz/memcached:1.6.8
docker stop my-memcache
docker run --rm --name my-memcache -d quay.io/ibmz/memcached:1.6.8 memcached -m 64
docker stop my-memcache

echo -e "\n $ANSI_GREEN *** FUNCTIONAL TEST(S) COMPLETED SUCESSFULLY *** $ANSI_RESET \n"
