#!/usr/bin/bash

echo " -> launch_rmfweb"
function launch_rmfdemos {
	ros2 launch rmf_demos office.launch.xml headless:=true
}

