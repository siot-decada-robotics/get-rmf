#!/usr/bin/bash

echo " -> build_freefleet_server"
function build_freefleet_server {
	cd ws-freefleet/ws-server
	pattern="ws-server"
	distro="foxy"

	check_signs $pattern $distro
	if [[ $? == 1 ]]; then
		exit 1
	fi

	colcon build --cmake-args -DCMAKE_BUILD_TYPE=RELEASE
	cd ../..
}


echo " -> build_freefleet_client"
function build_freefleet_client {
	cd ws-freefleet/ws-client
	pattern="ws-client"
	distro="noetic"

	check_signs $pattern $distro
	if [[ $? == 1 ]]; then
		exit 1
	fi

	colcon build --cmake-args -DCMAKE_BUILD_TYPE=RELEASE
	cd ../..
}

