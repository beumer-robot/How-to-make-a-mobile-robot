# ORBSLAM3 ROS2 Wrapper

[orbslam3](https://github.com/UZ-SLAMLab/ORB_SLAM3) does come with some support for integrating with ROS, but not with ROS2. We have created a ROS2 wrapper for the library. The wrapper is available on [Github](https://github.com/Multi-Agent-Robotics/ORB_SLAM3_ROS2), and is forked from Github user [zang09](https://github.com/zang09) repository [ORB_SLAM3_ROS2](https://github.com/zang09/ORB_SLAM3_ROS2). Our fork has been modified to work with the [Nvidia Jetson AGX Orin Developer Kit](https://www.nvidia.com/en-us/autonomous-machines/embedded-systems/jetson-orin/). The wrapper has been tested on Ubuntu 20.04 and ROS2 Foxy Fitzroy.

## Requirements

- [Nvidia JetPack 5.1](https://developer.nvidia.com/embedded/jetpack) installed on the Nvidia Jetson AGX Orin Developer Kit.
- [orbslam3](./orbslam3.md) installed
- [ROS2 Foxy Fitzroy](https://docs.ros.org/en/foxy/Installation.html) installed


## Installation

In your `colcon` workspace e.g. `~/ros2_ws/`, clone the repository:

```bash
git clone --depth 1 \
    https://github.com/Multi-Agent-Robotics/ORB_SLAM3_ROS2 \
    src/orbslam3
```
To compile the package run:

```bash
export ORB_SLAM3_ROOT_DIR=/path/to/orbslam3
colcon build --symlink-install --packages-select orbslam3
```

## Usage

The wrapper contains four executable nodes, one for each of the supported camera types:

### mono

### rgbd

### stereo

### stereo-inertial

Stereo camera with IMU

```bash
ros2 run orbslam3 stereo-inertial \
    <path_to_vocabulary> \
    <path_to_settings> \
    rectify := true | false \
    [equalize := true | false]
```

#### Example

```bash
ros2 run orbslam3 stereo-inertial \
    /path/to/orbslam3/Vocabulary/ORBvoc.txt \
    /path/to/orbslam3/Examples/Stereo-Inertial/EuRoC.yaml \
    true
```