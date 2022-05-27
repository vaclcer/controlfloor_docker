#!/usr/bin/env bash

#HOWTO: run "./build.sh GIT_TOKEN"

if [ "$1" ]; then
  docker build --build-arg GIT_TOKEN=$1 -t vaclavs/cf-provider:1.1 .
else
  echo 'HOWTO: run "./build.sh GIT_ACCESS_TOKEN"'
fi