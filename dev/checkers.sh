#!/usr/bin/bash


function check_directory {
	local thisdir_name=${PWD##*/}
	local pattern=$1

	[ "$thisdir_name" == "$pattern" ]
}


function check_ros_distro {
	local this_distro=$ROS_DISTRO
	local distro=$1

	if [[ -z "$this_distro" ]]; then
		return 0	
	fi
	[ "$this_distro" == "$distro" ]
}


function check_signs {
	check_directory $1
	local dir_ok=$?

	check_ros_distro $2 
	local distro_ok=$?

	if [[ $dir_ok == 1 ]]; then
		echo "current directory does not match pattern of: $1"
	fi

	if [[ $distro_ok == 1 ]]; then
		echo "sourced ros distro does not match pattern of: $2"
	fi

	return $(($dir_ok | $distro_ok))
}
