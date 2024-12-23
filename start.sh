#!/bin/bash

# Variables
IMAGE_NAME="gort"
CONTAINER_NAME="gort_container"
WORKSPACE_DIR="$PWD"

# Build the Docker image if it doesn't exist
if [[ "$(docker images -q $IMAGE_NAME 2> /dev/null)" == "" ]]; then
    echo "Building the Docker image..."
    docker build -t $IMAGE_NAME .
fi

# Check if a container with the same name is already running
if [[ "$(docker ps -q -f name=$CONTAINER_NAME)" != "" ]]; then
    echo "Stopping existing container..."
    docker stop $CONTAINER_NAME
fi

# Run the Docker container
echo "Starting Docker container '$CONTAINER_NAME'..."
docker run --platform linux/amd64 -it \
    --rm \
    --name $CONTAINER_NAME \
    -v "$WORKSPACE_DIR/src:/root/ros_ws/src" \
    -p 11311:11311 \
    $IMAGE_NAME \
    bash