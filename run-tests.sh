#!/bin/sh
# Start nginx in the background
nginx

# Add a small delay to ensure nginx starts
sleep 2

# Now perform the test
# Check if Nginx responds
curl -f http://localhost || {
    echo "Error: Nginx is not running!"
    exit 1
}