# Use an official ROS image
FROM osrf/ros:noetic-desktop-full

# Install additional tools if needed
RUN apt-get update && apt-get install -y \
    python3-pip \
    build-essential \
    vim \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Set up a workspace
RUN mkdir -p /root/ros_ws/src
WORKDIR /root/ros_ws

# Source ROS setup automatically
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
