#!/bin/bash

# Check if the correct number of arguments are provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

# Send a request to the URL and save the response body to a temporary file
response=$(curl -sI "$URL")
body_size=$(echo "$response" | awk '/Content-Length/ {print $2}')

# Display Size of the body in bytes
echo "$body_size"
