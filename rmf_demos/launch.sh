#!/usr/bin/bash

echo " -> launch_rmfweb"
function launch_rmfdemos {
	check_ros_distro "foxy"
	ros2 launch rmf_demos office.launch.xml headless:=true
}

