#!/bin/sh

echo "Starting NGINX..."
nginx -g 'daemon off;' &  # Start NGINX in the background

# Monitor the index.html file for any changes and reload NGINX
while inotifywait -e modify /usr/share/nginx/html/index.html; do
  echo "ConfigMap content changed, reloading NGINX..."
  nginx -s reload
done
