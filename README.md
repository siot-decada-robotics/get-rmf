# get-rmf
This repository contains setup scripts for rmf related workspaces.

## setup
``` bash
source setup.bash
```
Once setup.bash is sourced, go to the directory of which you want to store the workspaces ie. $HOME <br>
all commands from here-on should be executed in this directory
<br><br>
** please source ros2 foxy before running these commands
``` bash
source /opt/ros/foxy/setup.bash
```

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
If you encounter 
" Your Chrome version is null
lerna ERR! npm install stderr:
ChromeDriver installation failed TypeError: Cannot read property '1' of null ",
install chrome

Launch: <br>
``` bash
launch_rmfweb
```

