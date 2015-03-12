#!/bin/bash
umask 000

exec /sbin/setuser root transmission-daemon --foreground --allowed 127.*,192.168.20.* --log-info
