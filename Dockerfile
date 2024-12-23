# Use an official ROS 2 image
FROM osrf/ros:foxy-desktop

# Install additional tools if needed
RUN apt-get update && apt-get install -y \
    python3-pip \
    build-essential \
    vim \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install ROS 2 Development Tools
RUN apt-get update && apt-get install -y \
    ros-foxy-ament-cmake \
    ros-foxy-xacro \
    ros-foxy-joint-state-publisher-gui \
    && rm -rf /var/lib/apt/lists/*

# Install colcon
RUN pip install -U colcon-common-extensions

# Set up a workspace
RUN mkdir -p /root/ros_ws/src
WORKDIR /root/ros_ws

# Source ROS setup automatically
RUN echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc