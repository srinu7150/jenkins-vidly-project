#!/bin/sh
envsubst < /nginx_config/location.conf > /etc/nginx/conf.d/default.conf
cat /nginx_config/web.conf >> /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'


# envsubst < /nginx_config/web.conf > /etc/nginx/conf.d/default.conf
# nginx -g 'daemon off;'