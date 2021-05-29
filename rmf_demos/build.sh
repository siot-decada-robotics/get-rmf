#!/usr/bin/bash

echo " -> build_rmfdemos"
function build_rmfdemos {
	source /opt/ros/noetic/setup.bash | source /opt/ros/noetic/setup.zsh && \
	colcon build --cmake-args -DCMAKE_BUILD_TYPE=RELEASE
}

