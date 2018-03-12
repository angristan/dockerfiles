# Hastebin

![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/docker/build/angristan/hastebin.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/microbadger/image-size/angristan/hastebin.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/microbadger/layers/angristan/hastebin.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/docker/pulls/angristan/hastebin.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/hastebin/](https://img.shields.io/docker/stars/angristan/hastebin.svg?maxAge=3600&style=flat-square)

[Hastebin](https://github.com/seejohnrun/haste-server) is an open-source pastebin software written in node.js.

This image is available on the [Docker Hub](https://hub.docker.com/r/angristan/hastebin/).

## Features

- Based on Alpine Linux.
- Latest code from [seejohnrun/haste-server](https://github.com/seejohnrun/haste-server)
- Run in unprivileged mode as `$UID:$GID` (`4242:4242` by default)
- Uses the default file storage driver (no expiration).

## Usage

```docker
docker run -d \
  --name hastebin \
  -p 80:7777 \
  -e UID=4242 \
  -e GID=4242 \
  angristan/hastebin:latest
```

With persistance in a volume:

```docker
docker run -d \
  --name hastebin \
  --mount source=hastebin,target=/app/data
  -p 80:7777 \
  -e UID=4242 \
  -e GID=4242 \
  angristan/hastebin:latest
```

With persistance in a bind mount:

```docker
docker run -d \
  --name hastebin \
  --mount type=bind,source="$(pwd)"/data,target=/app/data
  -p 80:7777 \
  -e UID=4242 \
  -e GID=4242 \
  angristan/hastebin:latest
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
    environment:
     - UID=4242
     - GID=4242
```