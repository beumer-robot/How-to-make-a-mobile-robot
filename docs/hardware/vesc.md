# VESC

https://f1tenth.readthedocs.io/en/foxy_test/getting_started/firmware/drive_workspace_docker.html
https://github.com/f1tenth/vesc/tree/1952e799110f5c4eed82c68a6172bfcafd9998ac
https://f1tenth.org/build.html
https://github.com/jetsonhacks/installBLDC


## udev rules

When connecting the VESC boards over USB with JETSON AGX ORIN, a new device file is created in `/dev` for each of them.
The device file will be given the filename `ttyACM0` or `ttyACM1` depending on the order in which the two VESC boards were connected to the JETSON AGX ORIN. This creates an issue as the VESC boards are not always connected in the same order. When the JETSON AGX ORIN boots up the Linux kernel makes no guarantee which of the serial busses it communicates wit first. To solve this issue, we can use the `udev` tool to create symbolic links to the device files. This will allow us to use the same **alias** for the VESC boards regardless of the order in which they are connected to the JETSON AGX ORIN.

### Find USB port IDs

Each physical USB port on the JETSON AGX ORIN has a unique ID. To find the ID of the USB ports that the VESC boards are connected to, run the following command:

```sh
udevadm info -a -p $(udevadm info -q path -n /dev/ttyACM0)
```
![udevadm info](../../img/screenshot-vesc-udev-usb-deviceID.png)

**NOTE** it does not have to be the `KERNELS` parameter that you use. It just has to be one you can be certain is unique each time you connect the VESC boards. The `KERNELS` parameter is the one that we used.

### Create udev rules

Create a new file in `/etc/udev/rules.d` called `49-vesc-left-right.rules` and add the following lines to it:

```rules
SUBSYSTEMS=="usb", KERNELS=="1-4.1:1.0", OWNER="<user>", GROUP="<user>", MODE="0666", SYMLINK+="vesc-right"
SUBSYSTEMS=="usb", KERNELS=="1-2:1.0",   OWNER="<user>", GROUP="<user>", MODE="0666", SYMLINK+="vesc-left"
```
**NOTE** we use the `KERNELS` parameter that we found in the previous step to create the symbolic links.

`<user>` is the name of the user that will be running the ROS nodes. This is the user that will be given ownership of the device files. You can find the name of the user by running the following command:

```sh
whoami
```

Each rule will be checked in order. The first rule will create a symbolic link called `vesc-right` in `/dev` that points to the device file for the VESC board that is connected to the USB port with the ID `1-4.1:1.0`. The second rule will create a symbolic link called `vesc-left` in `/dev` that points to the device file for the VESC board that is connected to the USB port with the ID `1-2:1.0`.

Finally reload the udev rules with the following command:

```sh
sudo udevadm control --reload-rules
```

If you do not see the new symbolic links in `/dev` after reloading the udev rules, you can try unplugging and replugging the VESC boards.

![check udev rules are applied](../../img/screenshot-vesc-check-symlinks-have-been-created.png)