#!/bin/bash
umask 000

exec /sbin/setuser nobody /usr/bin/transmission-daemon -f --log-info
