# Ground Unmanned Mobility Platform Simulation Based on ROS and Gazebo

## 0. Project Information
- **Author:** Li Jixuan
- **Overview:** A Gazebo model simulation setup based on the ROS framework, carried out as part of the "Ground Unmanned Mobility Platform" course, incorporating SLAM & navigation software packages.
- **Last Modified:** 2023-11-24

## 1. Compilation First if Problems Occur
If you encounter any issues during operation, please compile the code first.

## 2. Script Descriptions
Before running the scripts, you need to modify the paths inside them.

There are 5 script files in total (referred to as Script 1 to Script 5), with the following functions:

- **Script 1:** Generates the vehicle and sensor models, displays them in RVIZ and Gazebo, and provides a window for keyboard control of the vehicle.
- **Script 2:** Performs manual SLAM mapping with keyboard control of the vehicle.
- **Script 3:** After SLAM mapping is completed (via Script 2 or Script 4), this script saves the map data.
- **Script 4:** Performs gmapping self-localization and autonomous navigation, while simultaneously building the map.
- **Script 5:** Launches independently when a map already exists (and is located in the specified folder), enabling navigation control within the known environment and map.

## 3. Operation Instructions
Start the .sh script files located under the workspace. The startup sequences and combinations are as follows (scripts are referred to by numbers 1 to 5):

- **① [Start: 1]:** Generates and displays the vehicle with sensors in Rviz and Gazebo, allowing keyboard control of the vehicle.
- **② [Start: 2, 3]:** Based on condition ①, perform keyboard-controlled SLAM and save the map.
- **③ [Start: 4, 3]:** Based on condition ①, perform gmapping autonomous navigation SLAM (requires issuing a 2D navigation goal in Rviz) and save the map.
- **④ [Start: 5]:** Based on an existing map (Li Jixuan has already generated a map; you can run ④ directly), perform global and local navigation within the known map.

## 4. Operation Notes (Must Read! Otherwise, errors may occur!)
- **①** If Gazebo reports an error during operation, try adding `export SVGA_VGPU10=0` to the first startup item in the script.
- **②** If the tf transform is empty, check if Gazebo has not exited completely. Use the `killall gzserver` command. If it returns no output, the process exists; if it prints "not found", this is not the cause of the error.
- **②** After each run, exiting Gazebo takes considerable time. Do not rerun the script before it has fully exited.
- **③** After running `3_map_server.sh`, if you intend to run `5_navigation.sh`, please modify the `origin` parameter in the map's YAML file. The format is: `origin: [-50.0 - x', -50.0 - y', 0.0]`, where x' is the x-offset when Gazebo generates the vehicle model, and y' is the y-offset. [Li Jixuan has already debugged this; currently `origin: [-63.0, -60.0, 0.0]`, so you can directly start `5_navigation.sh`.]

---

# 基于ROS和Gazebo的地面无人机动平台仿真

## 0. 项目信息
- **作者：** 李季轩
- **概述：** 以《地面无人机动平台》课程为载体的、基于ROS框架的gazebo模型仿真搭建与SLAM&导航软件包。
- **最后修改时间：** 2023-11-24

## 1. 运行如果有问题请先编译
如果运行中出现问题，请先编译代码。

## 2. 运行脚本说明
在运行前，需要首先修改脚本内的路径。

总计5个脚本.sh文件，功能如下：（脚本名字以1~5代称）

- **脚本1：** 生成小车及传感器的模型，分别在RVIZ与Gazebo中显示，同时提供窗口进行键盘控车；
- **脚本2：** 进行手动SLAM建图，键盘控车；
- **脚本3：** 在2/4中的SLAM建图完毕后，可以保存地图数据；
- **脚本4：** 进行gmapping自定位与自导航，并一边导航一边建图；
- **脚本5：** 在已经有地图（且存在指定文件夹下）的基础上，独立启动，在已有地图和环境中进行导航控制；

## 3. 运行指令
启动工作空间下的.sh脚本文件即可。启动顺序与组合如下：（脚本名字以1~5代称）

- **①【启动：1】：** 在Rviz与Gazebo中生成并显示小车+传感器，并可键盘控车；
- **②【启动：2、3】：** 在①的前提下进行键盘控车SLAM，并保存地图；
- **③【启动：4、3】：** 在①的前提下进行gmapping自动导航SLAM（需在Rviz下发2D-navi-goal），并保存地图；
- **④【启动：5】：** 在已有地图的前提下【当前李季轩已经生成地图，可直接运行④】，在已知地图中进行全局与局部导航。

## 4. 运行须知（必读，否则运行可能报错！！！！）
- **①** 如果运行中出现gazebo报错，尝试在脚本第一个启动项中加入 `export SVGA_VGPU10=0`;
- **②** 如果tf变换为空，检查是否存在gazebo未退出的情况。使用 `killall gzserver` 命令，如果无任何输出则存在，若打印“未找到”则不是该错误导致。
- **②** 每次运行完退出gazebo会花费较多时间，在未完全退出前不要重新运行脚本。
- **③** 每次运行 `3_map_server.sh` 后，如果要运行 `5_navigation.sh`，请地图的yaml文件中修改origin参数，修改格式：`origin:[-50.0-x', -50.0-y', 0.0]`，其中x'为gazebo生成小车模型时的x偏移量、y'为y偏移量。【当前李季轩已经调试好，`origin:[-63.0, -60.0, 0.0]`，可以直接启动 `5_navigation.sh`】
