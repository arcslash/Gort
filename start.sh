#!/bin/bash

# Variables
IMAGE_NAME="gort-dev"
CONTAINER_NAME="gort_container"
WORKSPACE_DIR="$HOME/gort"

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
docker run -it \
    --rm \
    --name $CONTAINER_NAME \
    -v "$WORKSPACE_DIR:/root/ros_ws" \
    -p 11311:11311 \
    $IMAGE_NAME \
    bash
