# Use official Nginx image as base
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site files into the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

