#!/bin/bash

fhelib=$1

docker run -d --name $fhelib-webide-container  -v test:/opt/CC/FHE-Workspace  -p 8443:8443 local/$fhelib-webide:latest