#!/usr/bin/bash

echo " -> build_rmfdemos"
function build_rmfdemos {
	colcon build --cmake-args -DCMAKE_BUILD_TYPE=RELEASE
}

