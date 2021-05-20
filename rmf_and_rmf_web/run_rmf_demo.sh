#!/bin/bash
source ~/rmf_ws/install/setup.bash
ros2 launch rmf_demos office.launch.xml headless:=true
