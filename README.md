# get-rmf
This repository contains setup scripts for rmf related workspaces.

## setup
``` bash
source setup.bash
```
Once setup.bash is sourced, goto the directory of which you want to store the workspaces ie. $HOME <br>
all commands from here-on should be executed in this directory
<br><br>
** please source ros2 before running these commands

## rmf demos
Installation:
``` bash
install_rmfdemos
```

Build:
``` bash
build_rmfdemos
```

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

