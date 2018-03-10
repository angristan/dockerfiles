# Hastebin

[Hastebin](https://github.com/seejohnrun/haste-server) is an open-source pastebin software written in node.js.

A `docker-compose.yml` example to deploy Hastebin using a Redis storage on a bind volume:

```yml
version: '3'

services:
  redis:
    restart: always
    image: redis:4-alpine
    volumes:
      - ./redis:/data

  hastebin:
    image: angristan/hastebin:latest
    restart: always
    ports:
      - "127.0.0.1:7777:7777"
    depends_on:
      - redis
```