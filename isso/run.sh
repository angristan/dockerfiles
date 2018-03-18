#!/bin/sh
chown -R $UID:$GID /isso/
exec su-exec $UID:$GID /sbin/tini -- isso -c /isso/config/isso.conf run