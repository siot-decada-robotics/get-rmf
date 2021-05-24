#!/usr/bin/bash

echo " -> build_freefleet_server"
function build_freefleet_server {
	cd ws-freefleet/ws-server
	source /opt/ros/foxy/setup.bash
	colcon build --cmake-args -DCMAKE_BUILD_TYPE=RELEASE
	cd ../..
}


echo " -> build_freefleet_client"
function build_freefleet_client {
	cd ws-freefleet/ws-client
	source /opt/ros/foxy/setup.bash
	colcon build --cmake-args -DCMAKE_BUILD_TYPE=RELEASE
	cd ../..
}

