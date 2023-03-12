# ZED-SDK ROS2 Wrapper

We use the [ZED-Mini](https://www.stereolabs.com/zed-mini/) camera for our robot. The ZED-Mini is a stereo camera with depth sensing capabilities. The camera is connected to the Nvidia Jetson AGX Orin Developer Kit via USB 3.0. The camera is controlled by the [ZED-SDK](https://www.stereolabs.com/developers/release/3.5/api/index.html) library. The ZED-SDK comes with a [ROS2 wrapper](https://www.stereolabs.com/docs/ros2/) that we use. It is straight forward to install and use. Follow the instructions on the [ZED-SDK ROS2 wrapper](https://www.stereolabs.com/docs/ros2/) page to install the wrapper. 

## Requirements

- [Nvidia JetPack 5.1](https://developer.nvidia.com/embedded/jetpack) installed on the Nvidia Jetson AGX Orin Developer Kit.
- [ZED-SDK v3.8.2](https://www.stereolabs.com/developers/release/) installed. The version is important, as this is the minimum version that supports the Nvidia Jetson AGX Orin Developer Kit, at the time of writing.

## Usage

With the ZED-SDK ROS2 wrapper installed, you can run the ZED-SDK ROS2 wrapper nodes. The ZED-SDK ROS2 wrapper nodes are:

```bash
ros2 launch zed_wrapper zedm.launch.py
```

This will launch the ZED-Mini camera node. Instead of manually launching the node, you can also use our `colcon` package [rnd-lugbot](https://github.com/Multi-Agent-Robotics/rnd-lugbot) to launch the ZED Mini together with the ORBSLAM3 ROS2 wrapper nodes. 


**TODO**

```bash
ros2 launch ./launch/orbslam3-zedm_launch.py
```