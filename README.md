# PHP 7.2 Docker Image with Apache
To use:
```
docker build -f Dockerfile.dev . -t php
docker run -d -p 8080:80 -p 443:443 -it --name=php -v $(pwd)/app:/app php
```

Remember:

Document root in the container is /app/www.
