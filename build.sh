#!/usr/bin/env bash

set -x

#
# you might need proxy to build behind corporate firewall - http_proxy host needs to be ip address
#http_proxy="http://host:port"

#[ -z "$http_proxy" ] && proxy="" || proxy="--build-arg http_proxy=$http_proxy --build-arg https_proxy=$http_proxy"

#
docker build $@ --rm $proxy -t asperitus/openeducat:11.0 .

##