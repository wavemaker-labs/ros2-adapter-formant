#!/bin/bash

source /opt/ros/*/setup.bash  # this adapter is meant to work with any ROS2 distribution
source /ros2_workspace/setup.bash

export PYTHONUNBUFFERED=true

# Configure ROS to use our DDS configuration file
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export CYCLONEDDS_URI=/cyclonedds.xml
export ROS_DOMAIN_ID=99

exec "$@"
