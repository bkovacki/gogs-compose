#!/bin/env bash

docker exec $1 bash -c 'ls /app/gogs | rm -f gogs-backup-*.zip && cd /app/gogs && USER=git ./gogs backup' 
docker cp $1:$(docker exec $1 bash -c 'readlink -f $(ls /app/gogs | grep gogs-backup-*.zip -)') . 
docker exec $1 bash -c 'ls /app/gogs | rm gogs-backup-*.zip'
