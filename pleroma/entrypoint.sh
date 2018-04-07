#!/bin/sh

MIX_ENV=prod

echo -e "\n== Migrating the database if needed..."
mix ecto.migrate

echo -e "\n== Running command: \"$@\""
exec "$@"