#!/usr/bin/bash

source dev/checker.sh
for f in $(find ./ -name '*.sh'); do source $f; done
