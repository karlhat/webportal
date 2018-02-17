#!/bin/bash
# clean up
rm -rf /run/httpd/* /tmp/httpd*
# Start httpd server
exec /usr/sbin/apachectl -DFOREGROUND