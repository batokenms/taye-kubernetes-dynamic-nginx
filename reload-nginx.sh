#!/bin/sh

echo "Starting NGINX..."
nginx -g 'daemon off;' &  # Start NGINX in the background

# Monitor the index.html file for any changes and reload NGINX
while inotifywait -e modify /usr/share/nginx/html/index.html; do
  echo "ConfigMap content changed, reloading NGINX..."
  nginx -s reload
done

# Build the Docker image and tag it
# docker build -t your-registry/nginx-dynamic:latest .
# Remember to use the bash script that we used to automate the process of building and pushing the image to the docker registry
# Here the re[pository with the script 
# https://github.com/joshking1/image-to-be-deployed.git
