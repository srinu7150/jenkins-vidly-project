#!/bin/env bash
envsubst < web.conf > /etc/nginx/conf.d/default.conf
nginx -g daemon off;