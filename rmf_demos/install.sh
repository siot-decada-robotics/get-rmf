#!/usr/bin/bash

echo " -> install_rmfdemos"
function install_rmfdemos {

	mkdir -p ws-rmf_demos/src
	cd ws-rmf_demos/src

	sudo apt install -y wget
	sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
	wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
	sudo apt update
	sudo apt install python3-shapely python3-yaml python3-requests -y

	git clone --recursive https://github.com/siot-decada-robotics/rmf_demos.git
	
	sudo rosdep init
	rosdep update
	rosdep install --from-paths . --ignore-src --rosdistro foxy -yr
}


