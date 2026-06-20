FROM nginx:alpine

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy Godot HTML5 export files into Nginx public directory
COPY . /usr/share/nginx/html/

# Clean up configuration files from webroot
RUN rm -f /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/nginx.conf
