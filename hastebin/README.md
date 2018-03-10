# Hastebin

![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/docker/build/angristan/hastebin.svg?maxAge=2592000&style=flat-square)
![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/microbadger/image-size/angristan/hastebin.svg?maxAge=2592000&style=flat-square)
![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/microbadger/layers/angristan/hastebin.svg?maxAge=2592000&style=flat-square)
![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/docker/pulls/angristan/hastebin.svg?maxAge=2592000&style=flat-square)
![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/docker/stars/angristan/hastebin.svg?maxAge=2592000&style=flat-square)

[Hastebin](https://github.com/seejohnrun/haste-server) is an open-source pastebin software written in node.js.

This image uses the default file storage driver.

## Features
- Based on Alpine Linux.
- Latest code from [seejohnrun/haste-server](https://github.com/seejohnrun/haste-server)

## Usage

```docker
docker run --name hastebin -d -p 80:7777 angristan/hastebin:latest
```

With persistance in a volume:

```docker
docker run --name hastebin -d -p 80:7777 --mount source=hastebin,target=/app/data angristan/hastebin:latest
```

With persistance in a bind mount:

```docker
docker run --name hastebin -d -p 80:7777 --mount type=bind,source="$(pwd)"/data,target=/app/data angristan/hastebin:latest
```

A `docker-compose.yml` example:

```yml
version: '3'

services:
  hastebin:
    container_name: hastebin
    image: angristan/hastebin:latest
    restart: always
    volumes:
      - ./data:/app/data
    ports:
      - "80:7777"
```