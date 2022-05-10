#!/bin/sh -e
ngrok config add-authtoken 28QPxo5JqoV6wWKid3GSuD79X7j_4WttKmnxxvcGCy2BF9uEk > /dev/null
ngrok tcp 3128 &
exec /usr/sbin/squid3 -N -d 0 -f /etc/squid/squid.conf
