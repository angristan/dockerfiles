# Tor

![https://hub.docker.com/r/angristan/tor/](https://img.shields.io/docker/build/angristan/tor.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/tor/](https://img.shields.io/microbadger/image-size/angristan/tor.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/tor/](https://img.shields.io/microbadger/layers/angristan/tor.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/tor/](https://img.shields.io/docker/pulls/angristan/tor.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/tor/](https://img.shields.io/docker/stars/angristan/tor.svg?maxAge=3600&style=flat-square)

![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Tor-logo-2011-flat.svg/612px-Tor-logo-2011-flat.svg.png)

This image is available on the [Docker Hub](https://hub.docker.com/r/angristan/tor/).

## Goal

This image is meant to be used to run a Tor Relay.

## Features

- Based on Debian 9.4 slim.
- Latest Tor stable version installed from the [https://www.torproject.org/docs/debian.html.en](https://www.torproject.org/docs/debian.html.en).
- Ran as an unprivileged user *(see [environment variables](#environment-variables))*

### Environment variables

- **GID** : tor group id *(default : 4242)*
- **UID** : tor user id *(default : 4242)*

### Volume

- **/var/lib/tor** : Tor data.

## Ports

- **9001** (bind it) : ORPort.
- **9030** (bind it) : DirPort.

## Usage

See the [docs](https://www.torproject.org/docs/tor-manual.html.en) to configure your torrc.

```docker
docker run -d \
  --name tor \
  -p 9001:9001 \
  -p 9050:9050 \
  --mount type=bind,source="$(pwd)"torrc,target=/etc/tor/torrc \
  --mount type=bind,source="$(pwd)"/data,target=/var/lib/tor \
  -e UID=4242 \
  -e GID=4242 \
  angristan/tor:latest
```

A `docker-compose.yml` example:

```yml
version: '2.3'

services:
  searx:
    container_name: tor
    image: angristan/tor:latest
    restart: always
    volumes:
      - ./torrc:/etc/tor/torrc
      - ./data:/var/lib/tor
    ports:
      - "9001:9001"
      - "9050:9050"
    environment:
      - UID=4242
      - GID=4242
```