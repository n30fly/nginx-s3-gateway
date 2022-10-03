#!/usr/bin/env bash

patch /etc/nginx/templates/default.conf.template < /opt/default.conf.template.patch
patch /etc/nginx/include/s3gateway.js < /opt/s3gateway.patch
