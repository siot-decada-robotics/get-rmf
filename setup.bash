#!/usr/bin/bash

source dev/checkers.sh
for f in $(find ./ -name '*.sh'); do source $f; done
