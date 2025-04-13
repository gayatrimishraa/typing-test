# Use official Nginx image as base
FROM nginx:alpine

# Install Python3 and pip
RUN apk add --no-cache python3 py3-pip

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site files into the container
COPY . /usr/share/nginx/html

# Install any Python dependencies if needed (optional)
# RUN pip3 install -r /usr/share/nginx/html/requirements.txt

# Expose port 80
EXPOSE 80

# Run the Python script
CMD ["python3", "/usr/share/nginx/html/test_script.py"]
