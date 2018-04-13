# Friendica

An attempt to a [Friendica](https://github.com/friendica/friendica) Docker image.

Here's a `docker-compose.yml` sample:

```yml
version: '2.3'

services:
  mariadb:
    container_name: friendica_mariadb
    image: mariadb:10.3
    restart: always
    volumes:
      - ./mysql:/var/lib/mysql
    environment:
      MYSQL_ROOT_PASSWORD: friendica
      MYSQL_DATABASE: friendica
      MYSQL_USER: friendica
      MYSQL_PASSWORD: friendica

  web:
    container_name: friendica_web
    image: friendica
    restart: always
    depends_on:
      - mariadb
    ports:
      - "127.0.0.1:8080:80"
```

It's stuck here:

![rip](https://i.imgur.com/S2REvxn.png)

Any help is welcomed.
