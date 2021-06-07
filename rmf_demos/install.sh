#!/usr/bin/bash

echo " -> install_rmfdemos"
function install_rmfdemos {

	mkdir -p ws-rmf_demos
	
	sudo apt remove '^ros-foxy-rmf-.*' -y
	sudo apt update
	sudo apt install wget cmake python3-vcstool qt5-default ignition-edifice python3-rosdep python3-colcon* -y
	sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
	wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
	sudo apt update
	python3 -m pip install flask-socketio

	git clone --recursive -b rmf_demos https://github.com/siot-decada-robotics/rmf-packages.git ws-rmf_demos/src/
	
	sudo rosdep init
	rosdep update
	rosdep install --from-paths ws-rmf_demos/src --ignore-src -r -y
}


