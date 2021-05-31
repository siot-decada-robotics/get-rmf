#!/usr/bin/bash

echo " -> launch_rmfweb"
function launch_rmfweb {
	check_ros_distro "foxy"
	npm start --prefix ws-rmf_web/rmf-web/packages/dashboard
}

