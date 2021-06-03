#!/bin/bash

fhelib=$1

docker build -f ./Dockerfile.CENTOS.$fhelib -t local/$fhelib-base --build-arg USER_ID=$(id -u ${USER}) .

docker build -f ./Dockerfile.CENTOS.webide -t local/$fhelib-webide --build-arg lib_tag=local/$fhelib-base:latest .