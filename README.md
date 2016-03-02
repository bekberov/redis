# redis
REDIS v2.8 (Ubuntu based)

### Installation ###

1. Install [Docker](https://www.docker.com/).

2. Pull image from DockerHub:

   docker pull bekberov/redis


3. Run redis:

   docker run -d --name redis -p 5672:5672 -p 15672:15672 -v /redis/log:/data/log -v /redis/data:/data/dmp bekberov:redis:v2.8



### Other useful commands ###

docker exec -it redis bash

docker build --no-cache -t bekberov/redis:v2.8 .
