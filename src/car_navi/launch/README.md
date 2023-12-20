#DIRECTIONS:

car_amcl.launch                         amcl定位的基本配置文件
car_navigation.launch             导航功能文件, 直接启动即可, 可以在已有地图下导航
car_path.launch                         导航基本配置文件
car_slam auto.launch               自动slam文件, 直接启动即可
car_slam manual.launch         手动slam文件, 直接启动即可
car_slam _mapget.launch       地图加载基本配置文件
car_slam_mapsave.launch    地图保存功能文件，在自动/手动slam之后, launch此文件可保存地图
car_slam.launch                          slam基本配置文件, 包含gmapping算法
car_spawn.launch                       加载模型基础配置文件,将在rviz和gazebo中显示

李季轩于2023.11.23