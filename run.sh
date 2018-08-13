#!/usr/bin/env bash

#docker pull asperitus/openeducat
#docker run -it --rm --privileged --name openeduat -p 8080:8080 -v /dev/shm:/dev/shm --network openeducat-net  --entrypoint bash asperitus/openeducat

docker exec -it openeducat bash

##
