#This is a dockerfile for creating a new image with redis v.2.8

FROM        ubuntu:14.04
MAINTAINER Kerim Bekberov <bekberovkerim@gmail.com>

RUN         apt-get update && apt-get install -y redis-server

# Add VOLUMEs to allow backup of config, logs and databases
VOLUME  ["/var/log/redis", "/var/lib/redis"]

EXPOSE      6379
ENTRYPOINT  ["/usr/bin/redis-server"]
