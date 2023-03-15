# Testing with DS4 Controller

Using [`ds4_driver`](https://github.com/naoki-mizuno/ds4_driver) we can test the controller with the following command, cherry-picking all the controller inputs from the `status` topic.
```sh
ros2 topic echo /status | command grep -A 23 axis_left_x
```