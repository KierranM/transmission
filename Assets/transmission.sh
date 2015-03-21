#!/bin/bash
umask 000

exec /sbin/setuser root transmission-daemon --foreground --log-info
