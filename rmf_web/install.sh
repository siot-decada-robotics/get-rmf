#!/usr/bin/bash


echo " -> install_rmfweb"
function install_rmfweb {

	mkdir -p ws-rmf_web
	
	git clone --recursive -b rmf-web https://github.com/siot-decada-robotics/rmf-packages.git ws-rmf_web/.

	sudo apt update && sudo apt install curl
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
	nvm install 14
	pip3 install pipenv
	npm install -g lerna@4
}

