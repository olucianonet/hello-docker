#!/bin/bash
for f in `docker ps -a | awk '{print $1}' | grep '[a-z|0-9]'`
do
echo 'Removing container' $f
docker rm -f $f
done
exit 0
