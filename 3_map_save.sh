#!/bin/bash
#请先将路径修改为本地路径

sleep 1

gnome-terminal -- bash -c "cd /home/vtie/ROS_LJX_ws/;source ./devel/setup.bash;roslaunch car_navi car_slam_mapsave.launch"

sleep 1

exit 0
