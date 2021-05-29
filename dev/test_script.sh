#!/bin/bash

source checkers.sh

pattern="dev"
distro="foxy"

check_signs $pattern $distro
echo $?
