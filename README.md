# PHP 7.2 Docker Image with Apache - OpenShift Online Ready
## To use development environment:
```
docker build -f Dockerfile.dev . -t php72-dev
docker run -d -p 8080:8080 -it --name=php -v $(pwd)/var/www/html:/var/www/html php72-dev
```

## To use production environment:
```
docker build -f Dockerfile.prod . -t php72
docker run -d -p 8080:8080 -it --name=php -v $(pwd)/var/www/html:/var/www/html php72
```
## Publish Images
Run ```sh build.sh``` to update vesica/php72 (https://hub.docker.com/r/vesica/php72/) and vesica/php72-dev (https://hub.docker.com/r/vesica/php72-dev/) on hub.docker.com.

Please specify the appropriate version for the version variable in build.sh.


## Remember:

Document root in the container is /var/www/html.
