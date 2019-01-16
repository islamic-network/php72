#!/bin/bash

###########################################################################################
#UNLESS YOU WANT TO CHANGE SOMETHING TO DO WITH THE PUSH TO NEXUS, LEAVE THE BELOW ALONE #
###########################################################################################
## The URL of the repo. Do not change unless you're sure about this.
dev=vesica/php72:dev
latest=vesica/php72:latest

## The actual script to build and push the image
echo "Building development image"
docker build -f Dockerfile.dev . -t $dev
docker push $dev

echo "Building production image"
docker build -f Dockerfile . -t $latest
docker push $latest

