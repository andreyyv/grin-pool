#!/bin/bash

# Build containers
docker build -t localhost:32000/splunk splunk -f ./splunk/Dockerfile.splunk
docker build -t localhost:32000/universalforwarder splunk -f ./splunk/Dockerfile.universalforwarder
docker build -t localhost:32000/rmq rmq -f ./rmq/Dockerfile
docker build -t localhost:32000/stratum stratum -f ./stratum/Dockerfile
docker build -t localhost:32000/bitgrin bitgrin -f ./bitgrin/Dockerfile
docker build -t localhost:32000/grin grin -f ./grin/Dockerfile
docker build -t localhost:32000/logstash logstash -f ./logstash/Dockerfile
docker build -t localhost:32000/nginx nginx -f ./nginx/Dockerfile
docker build -t localhost:32000/letsencrypt letsencrypt -f ./letsencrypt/Dockerfile
docker build -t localhost:32000/keybase keybase -f ./keybase/Dockerfile
docker build -t localhost:32000/webui-js grin-py/webui-js -f ./grin-py/webui-js/Dockerfile
docker build -t localhost:32000/mwdockerbase grin-py/mwdockerbase -f ./grin-py/mwdockerbase/Dockerfile
docker build -t localhost:32000/services grin-py -f ./grin-py/Dockerfile
