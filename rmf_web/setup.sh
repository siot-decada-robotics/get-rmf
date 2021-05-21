#!/usr/bin/bash

echo " -> setup_rmfweb"
function setup_rmfweb {
	cd ws-rmf_web/
	lerna bootstrap
	cd ../
}

