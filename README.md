# PHP 7.2 Docker Image with Apache
To use:
```
docker build -f Dockerfile.dev . -t php72
docker run -d -p 8080:80 -p 443:443 -it -v app:/app --name=php72 php72
```

Remember:

Document root in the container is /app/www.