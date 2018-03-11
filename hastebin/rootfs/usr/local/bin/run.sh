#!/bin/sh
chown -R $UID:$GID /app
cd /app
exec su-exec $UID:$GID node server.js