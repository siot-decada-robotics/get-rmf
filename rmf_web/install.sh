#!/usr/bin/bash

echo " -> install_rmfweb"
function install_rmfweb {

	mkdir -p ws-rmf_web
	cd ws-rmf_web

	git clone --recursive https://github.com/siot-decada-robotics/rmf-web.git

	sudo apt remove '^ros-foxy-rmf-.*' -y

	sudo apt update && sudo apt install curl
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
	nvm install 14
	
	pip3 install pipenv

	cd rmf-web
	npm install -g lerna@4

}

