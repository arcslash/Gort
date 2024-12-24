# Gort

![gort project image](images/image.png "Gort")


## Dev Instructions

Project use a docker container for the development so will need to install docker and related docker dependancies before using the project.
Why Docker?
- Currently using mac, and it feels like a pain to install a vm.


### Requirements

1. Install XQuartz on macOS
Download and install XQuartz from xquartz.org.
After installation, launch XQuartz.
Go to XQuartz > Preferences > Security and check the box for:
Allow connections from network clients. 

2. Configure XQuartz for Networking
Open a terminal and allow your local machine (Docker host) to connect to the X server:
```bash
xhost + 127.0.0.1
```

### Running Rviz

```bash
Xvfb :1 -screen 0 1024x768x16 &
export DISPLAY=:1
rviz2
```


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


## Credits
Thanks Josh for template: (my_bot)[https://github.com/joshnewans/my_bot]
