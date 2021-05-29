#!/usr/bin/bash

echo " -> build_rmfdemos"
function build_rmfdemos {
	cd ws-rmf_demos
	colcon build --cmake-args -DCMAKE_BUILD_TYPE=RELEASE
	cd ..
}

