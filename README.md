turtlesim_tutorial
==================
First Homework for Laboratorio di Intelligenza Artificiale e Grafica interattiva.


USAGE:
------
In the repo's root run:
- `$ rm -rf build/ devel/ src/CMakeLists.txt`
- `$ source /opt/ros/kinetic/setup.bash`
- `$ catkin_init_workspace src`
- `$ catkin_make`

Open ~/.bashrc and add:
- `source [path-to-the-cloned-repo-root]/devel/setup.bash`

In the repo' root run each command in a different terminal tab:
- `$ roscore`
- `$ rosrun turtlesim turtlesim_node`
- `$ rosrun turtlesim turtle_teleop_key`
- `$ rosrun turtlesim tutorial_delete_cicle`
- `$ rosrun turtlesim tutorial_draw_circle [NUMBER OF CIRCLES]`
