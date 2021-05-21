#!/usr/bin/bash

echo " -> launch_rmfweb"
function launch_rmfweb {
	cd ws-rmf_web/rmf-web
	cd packages/dashboard
	npm start
	cd ../../../..
}

