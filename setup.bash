#!/usr/bin/bash

for f in $(find ./ -name '*.sh'); do source $f; done

