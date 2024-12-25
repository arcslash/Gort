# Gort

![gort project image](images/image.png "Gort")


## Dev Instructions

Project use a docker container for the development so will need to install docker and related docker dependancies before using the project.
Why Docker?
- Currently using mac, and it feels like a pain to install a vm.


### Requirements

Just install docker and follow setting up dev environment in a container ( This might be the easiest way to quick start a project in ROS ).



## Installation Instructions


Inside the ros workspace run

```bash
colcon build --symlink-install
```

then 

```bash
source install/setup.bash
```

then launch

 ```bash
ros2 launch gort_one rsp.launch.py
 ```

## Running 


### Rviz2 Controls

Open up Rviz using

```bash
rviz2
```

Wheel controls

```bash
ros2 run joint_state_publisher_gui joint_state_publisher_gui
```


### Run Gazebo

Open up Gazebo using,

```bash
ros2 launch gazebo_ros gazebo.launch.py
```

```bash
ros2 run gazebo_ros spawn_entity.py -topic robot_description -entity bot_name
```

## Credits
Thanks Josh for template: (my_bot)[https://github.com/joshnewans/my_bot]
