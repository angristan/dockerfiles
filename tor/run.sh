#!/bin/bash

addgroup --GID ${GID} tor

adduser --uid ${UID} --gid ${GID} \
    --home /tor --shell /bin/sh \
    --disabled-password --gecos "" tor

chown -R tor:tor /var/lib/tor

su -c /usr/bin/tor tor