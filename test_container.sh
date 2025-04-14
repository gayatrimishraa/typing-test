#!/bin/bash

echo "Running container test..."

# Run your Docker container
docker run -d -p 8080:80 --name typing-test gayatrimishraa/typing-test

# Give it a few seconds to start
sleep 5

# Perform a simple test - check if HTTP 200 OK from the container
status=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080)

# Stop and remove the container
docker stop typing-test
docker rm typing-test

# Check result
if [ "$status" -eq 200 ]; then
  echo "✅ Container test passed."
  exit 0
else
  echo "❌ Container test failed with status $status."
  exit 1
fi

