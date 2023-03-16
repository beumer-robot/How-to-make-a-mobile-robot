# Testing with DS4 Controller

Using [`ds4_driver`](https://github.com/Multi-Agent-Robotics/ds4_driver) we can test the controller with the following command, cherry-picking all the controller inputs from the `/status` topic.
```sh
ros2 topic echo /status | command grep -A 23 axis_left_x
```

After building the ROS2 package launch the `ds4_twist` node with 2 DOFs. The triggers axis (axis_r2 - axis_l2) are used to control the linear velocity in $x$ and the left joystick $x$-axis (axis_left_x) is used to control the angular velocity around $z$.

```sh
ros2 launch ds4_driver ds4_twist_lugbot.launch.xml
```

Look at the `/cmd_vel` topic to see the velocity commands being published.

```sh
ros2 topic echo /cmd_vel
```