#!/bin/sh -e
ngrok config add-authtoken 28QPxo5JqoV6wWKid3GSuD79X7j_4WttKmnxxvcGCy2BF9uEk
ngrok tcp 3128 --log=stdout > ngrok.log
exec /usr/sbin/squid3 -N -d 0 -f /etc/squid/squid.conf
