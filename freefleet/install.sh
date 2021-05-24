#!/usr/bin/bash

echo " -> install_freefleet_client"
function install_freefleet_client {
	mkdir -p ws-freefleet/ws-client/src

	sudo apt update && sudo apt install \
		git wget qt5-default \
		python3-rosdep \
		python3-vcstool \
		python3-colcon-common-extensions \
		maven default-jdk

	cd ws-freefleet/ws-client/src
	git clone --recursive -b freefleet-client https://github.com/siot-decada-robotics/rmf-packages.git
	rosdep install --from-paths . --ignore-src --rosdistro noetic -yr
	cd ../../..
}

echo " -> install_freefleet_server"
function install_freefleet_server {
	mkdir -p ws-freefleet/ws-server/src

	sudo apt update && sudo apt install \
		git wget qt5-default \
		python3-rosdep \
		python3-vcstool \
		python3-colcon-common-extensions \
		maven default-jdk

	cd ws-freefleet/ws-server/src
	git clone --recursive -b freefleet-server https://github.com/siot-decada-robotics/rmf-packages.git
	rosdep install --from-paths . --ignore-src --rosdistro foxy -yr
	cd ../../..
}

