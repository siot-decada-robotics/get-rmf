#!/bin/sh
echo "================================================= remove ros-foxy-rmf from apt ==========================================="
sudo apt remove '^ros-foxy-rmf-.*' -y
echo "================================================= install rmf from => https://github.com/open-rmf/rmf ===================="
echo "================================================= install rosdep ========================================================="
sudo apt install python3-rosdep
sudo rosdep init
rosdep update
echo "================================================= additional dependencies ================================================"
sudo apt update
sudo apt install -y wget
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
echo "==================================== install all non-ROS dependencies of RMF packages ===================================="
sudo apt update && sudo apt install git cmake python3-vcstool curl qt5-default ignition-edifice -y
python3 -m pip install flask-socketio
sudo apt-get install python3-colcon*
echo "================================================== download source code =================================================="
mkdir -p ~/rmf_ws/src
cd ~/rmf_ws
wget https://raw.githubusercontent.com/open-rmf/rmf/main/rmf.repos
vcs import src < rmf.repos
rosdep install --from-paths src --ignore-src --rosdistro foxy -yr
echo "========================================================== compile ======================================================="
source /opt/ros/foxy/setup.bash
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release
echo "================================================== install rmf-web from => https://github.com/open-rmf/rmf-web ==========="
echo "================================================== install nodejs ========================================================"
sudo apt update && sudo apt install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install 14
echo "=================================================== install pipenv ======================================================="
pip3 install pipenv
echo "=================================================== bootstrap ============================================================"
git clone https://github.com/open-rmf/rmf-web
cd rmf-web
npm install -g lerna@4
lerna bootstrap
