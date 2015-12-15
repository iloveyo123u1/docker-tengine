# Tengine on Docker

DockerHub: https://hub.docker.com/r/kamijin/tengine/

## Run Docker
 
```
docker run \ 
  -v ./config/nginx.conf:/etc/nginx/nginx.conf:ro \
  -v ./config/conf.d/:/etc/nginx/conf.d/:ro \
  -v ./content:/usr/share/nginx/html:ro \
  -p 80:80 \
  -d kamijin/tengine
```

## Run Docker Compose

```
git clone https://github.com/kamijin-fanta/docker-tengine.git
docker-compose up
```
