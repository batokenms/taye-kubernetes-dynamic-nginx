# Use the official NGINX image as the base image
FROM nginx:latest

# Install inotify-tools to monitor file changes
RUN apt-get update && apt-get install -y inotify-tools

# Copy a custom script to the container to monitor and reload NGINX
COPY reload-nginx.sh /reload-nginx.sh

# Make the script executable
RUN chmod +x /reload-nginx.sh

# Expose port 80
EXPOSE 80

# Set the entry point to run the reload script
ENTRYPOINT ["/reload-nginx.sh"]
