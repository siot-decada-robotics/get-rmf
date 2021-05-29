#!/usr/bin/bash

echo " -> build_rmfdemos"
function build_rmfdemos {
	cd ws-rmf_demos

	pattern="ws-rmf_demos"
	distro="foxy"

	check_signs $pattern $distro
	if [[ $? == 1 ]]; then
		exit 1
	fi

	colcon build --cmake-args -DCMAKE_BUILD_TYPE=RELEASE
}

