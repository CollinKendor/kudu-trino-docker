#!/bin/sh

docker rm $(docker ps -aqf "name=kudu")
docker volume rm $(docker volume ls --filter name=kudu -q)