# PHP 7.2 Docker Image with Apache - OpenShift Online Ready
To use:
```
docker build -f Dockerfile.dev . -t php
docker run -d -p 8080:80 -p 443:443 -it --name=php -v $(pwd)/var/www/html:/var/www/html php
```

Remember:

Document root in the container is /var/www/html.
