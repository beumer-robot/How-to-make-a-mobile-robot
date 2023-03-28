# Differential Drive
Converting twist message into differential drive commands.

This involves a conversion from `Twist.linear.x` and `Twist.angular.z` to left and right wheel velocities. These wheel velocities should then be interfaced with the VESC motor controllers.

Found the following ROS packages that attempt this already

- [`diff_drive_controller`](http://wiki.ros.org/diff_drive_controller)
- [`differential_drive`](http://wiki.ros.org/differential_drive)