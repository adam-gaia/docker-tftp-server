#!/bin/sh
set -ex

service rsyslog start
service tftpd-hpa start

# Write a message to the system log so that the file will exist
logger "Starting tftp server..."

# Follow the tftp syslog output
tail -f /var/log/syslog

