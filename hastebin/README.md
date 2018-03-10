# Hastebin

![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/docker/build/angristan/hastebin.svg)
![https://hub.docker.com/r/angristan/hastebin/](https://images.microbadger.com/badges/image/angristan/hastebin.svg)
![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/docker/pulls/angristan/hastebin.svg)
![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/docker/stars/angristan/hastebin.svg)

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
    image: angristan/hastebin:latest
    restart: always
    ports:
      - "80:7777"
    volumes:
      - ./data:/app/data
```