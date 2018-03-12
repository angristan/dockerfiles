# Isso

![https://hub.docker.com/r/angristan/isso/](https://img.shields.io/docker/build/angristan/isso.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/isso/](https://img.shields.io/microbadger/image-size/angristan/isso.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/isso/](https://img.shields.io/microbadger/layers/angristan/isso.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/isso/](https://img.shields.io/docker/pulls/angristan/isso.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/isso/](https://img.shields.io/docker/stars/angristan/isso.svg?maxAge=3600&style=flat-square)

![](https://posativ.org/isso/_static/isso.svg)

[Isso](https://posativ.org/isso/) is a commenting server similar to Disqus, written in Python. It supports Markdown, stores comments on a SQLite database, and is used with a super light JS client.

Based on [wonderfall/isso](https://github.com/Wonderfall/dockerfiles/tree/master/isso).

This image is available on the [Docker Hub](https://hub.docker.com/r/angristan/isso/).

## Features

- Based on Alpine Linux
- Latest Isso version installed with `pip`
- Ran as an unprivileged user *(see [environment variables](#environment-variables))*

### Build-time variables

- **ISSO_VER** : version of Isso.

### Environment variables

- **GID** : isso group id *(default : 4242)*
- **UID** : isso user id *(default : 4242)*

### Volumes

- **/config** : location of configuration files
- **/db** : location of the SQLite database

### Port

- **8080**

## Usage

First, create a `./config/isso.conf`.

Here is an example:

```ini
[general]
dbpath = /db/comments.db
host = https://isso.domain.tld/

[server]
listen = http://0.0.0.0:8080/
```

Please look at the [documentation](https://posativ.org/isso/docs/configuration/server/) for more options.