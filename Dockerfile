# Use the official NGINX base image
FROM nginx

# Remove the default NGINX configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX configuration
COPY nginx.conf /etc/nginx/conf.d/

# Copy the sample web page to the NGINX default location
COPY sample.html /usr/share/nginx/html/

# Expose port 83 for web traffic
EXPOSE 83

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
