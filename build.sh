#!/bin/bash

## The URL of the nexus repo. Do not change unless you're sure about this.
remote=vesica/php72
local=php72prod

## Release tag / version for gg release. If this is not for a specific release, please set this to latest, otherwise set it to a specific release.
version=2

###########################################################################################
# UNLESS YOU WANT TO CHANGE SOMETHING TO DO WITH THE PUSH TO NEXUS, LEAVE THE BELOW ALONE #
###########################################################################################
## The actual script to build and push the image to nexus
docker build -f Dockerfile.prod . -t $local
docker tag $local $remote:$version
docker push $remote:$version
if [ "$version" != "latest" ]
    then
        docker tag $local $remote:latest
        docker push $remote:latest
    fi
