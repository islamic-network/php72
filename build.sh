#!/bin/bash

## Release tag / version. If this is not for a specific release, please set this to latest, otherwise set it to a specific release.
version=1

###########################################################################################
#UNLESS YOU WANT TO CHANGE SOMETHING TO DO WITH THE PUSH TO NEXUS, LEAVE THE BELOW ALONE #
###########################################################################################
## The URL of the repo. Do not change unless you're sure about this.
prod=vesica/php72
dev=vesica/php72-dev

## The actual script to build and push the image
echo "Building development image"
docker build -f Dockerfile.dev . -t $dev:$version
docker push $dev:$version

echo "Building production image"
docker build -f Dockerfile.prod . -t $prod:$version
docker push $prod:$version

if [ "$version" != "latest" ]
    then
        docker build -f Dockerfile.dev . -t $dev:latest
        docker push $dev:latest
        docker build -f Dockerfile.prod . -t $prod:latest
        docker push $prod:latest
    fi
