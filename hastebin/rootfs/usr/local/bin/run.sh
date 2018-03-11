#!/bin/sh
chown -R $UID:$GID /app
exec su-exec $UID:$GID node server.js