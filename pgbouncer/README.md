# PgBouncer

Minimal image for [PgBouncer](https://pgbouncer.github.io/).

Based on [wonderfaill/pgbouncer](https://github.com/Wonderfall/dockerfiles/tree/master/pgbouncer)

## Environment variables

- **GID** : user id *(default : 936)*
- **UID** : group id *(default : 936)*

## Usage

The image doesn't work as-is. You have to mount your configuration into the container.

```docker
docker run -d \
  --name pgbouncer \
  --mount type=bind,source="$(pwd)"/config,target=/etc/pgbouncer \
  -e UID=4242 \
  -e GID=4242 \
  angristan/pgbouncer:latest
```

To get an example config:

```docker
docker exec -i pgb cat /etc/pgbouncer/pgbouncer.ini > config/pgbouncer.ini
```