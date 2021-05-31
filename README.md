# get-rmf
This repository contains setup scripts for rmf related workspaces.

## FAQ
Answers to frequently asked questions can be found [here](docs/common_errors.md).

## setup
``` bash
source setup.bash
```
Once setup.bash is sourced, go to the directory of which you want to store the workspaces ie. $HOME <br>
all commands from here-on should be executed in this directory
<br><br>
** please source ros2 foxy before building rmf-demos

## rmf demos
Installation:
``` bash
install_rmfdemos
```

Build (Remember that you must build from the ws-rmf_demos directory):
``` bash
build_rmfdemos
```

Launch: <br>
This steps requires rmf demos to be sourced
``` bash
source ws-rmf_demos/install/setup.bash
launch_rmfdemos
```
open rmf demo panel at http://localhost:5000/


## rmf web
Installation:
``` bash
install_rmfweb
```

Setup: <br>
This steps requires rmf demos to be installed and sourced
``` bash
setup_rmfweb
```
Launch: <br>
``` bash
launch_rmfweb
```

## freefleet
Freefleet workspaces are seperated into client and server
<br> <br>
Installation:
``` bash
# Server
install_freefleet_server

# Client
install_freefleet_client
```

Build
``` bash
# Server
build_freefleet_server

# Client
build_freefleet_client
```

