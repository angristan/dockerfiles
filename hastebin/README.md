# Hastebin

[![](https://images.microbadger.com/badges/version/angristan/hastebin.svg)](https://microbadger.com/images/angristan/hastebin) [![](https://images.microbadger.com/badges/image/angristan/hastebin.svg)](https://microbadger.com/images/angristan/hastebin)

[Hastebin](https://github.com/seejohnrun/haste-server) is an open-source pastebin software written in node.js.

This image uses the default file storage driver.

## Usage

```docker
docker run --name hastebin -d -p 7777:7777 angristan/speedtest:latest
```

With persistance in a volume:

```docker
docker run --name hastebin -d -p 7777:7777 --mount source=hastebin,target=/app/data angristan/speedtest:latest
```

With persistance in a bind mount:

```docker
docker run --name hastebin -d -p 7777:7777 --mount type=bind,source="$(pwd)"/data,target=/app/data angristan/speedtest:latest
```

A `docker-compose.yml` example:

```yml
version: '3'

services:
  hastebin:
    image: angristan/hastebin:latest
    restart: always
    ports:
      - "7777:7777"
    volumes:
      - ./data:/app/data
```