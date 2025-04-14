#!/bin/bash

# Pull the image (optional if just built)
docker pull gayatrimishraa/typing-test

# Run the container in detached mode
docker run -d --name typing-test-container gayatrimishraa/typing-test

# Wait for a few seconds to let the container start
sleep 5

# Check if the container is running
docker ps | grep typing-test-container

# Show container logs
docker logs typing-test-container

# Stop and remove container (clean up)
docker stop typing-test-container
docker rm typing-test-container
