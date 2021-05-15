#!/usr/bin/bash

mkdir -p ws-rmf_demos/src
cd ws-rmf_demos/src
git clone --recursive https://github.com/osrf/rmf_demos.git
cd ..

sudo apt install -y wget
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt update
sudo apt install python3-shapely python3-yaml python3-requests -y

sudo rosdep init
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro foxy -yr

colcon build --cmake-args -DCMAKE_BUILD_TYPE=RELEASE

