# ORBSLAM3

<!-- https://arxiv.org/abs/2007.11898 -->

[Orbslam3](https://github.com/UZ-SLAMLab/ORB_SLAM3/tree/4452a3c4ab75b1cde34e5505a36ec3f9edcdc4c4) is an open source library for Visual-Inertial
[SLAM](https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping) developed by Carlos Campos, Richard Elvira, Juan J. Gómez Rodríguez, José M. M. Montiel, Juan D. Tardos. at the [Robotics, Perception and Real Time Group](https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping) at the [University of Zaragoza](https://www.unizar.es/university-zaragoza) in Spain. 

## Citation

```bibtex
@article{ORBSLAM3_TRO,
  title={{ORB-SLAM3}: An Accurate Open-Source Library for Visual, Visual-Inertial 
           and Multi-Map {SLAM}},
  author={Campos, Carlos AND Elvira, Richard AND G\´omez, Juan J. AND Montiel, 
          Jos\'e M. M. AND Tard\'os, Juan D.},
  journal={IEEE Transactions on Robotics}, 
  volume={37},
  number={6},
  pages={1874-1890},
  year={2021}
 }
```

---

## Download, Build and Install
The library is written in C++ using `cmake` as its build system. We had trouble with compiling the library on Ubuntu 20.04. Github user [zang09](https://github.com/zang09) has a [fork](https://github.com/zang09/ORB-SLAM3-STEREO-FIXED) of the library that has been modified to work on Ubuntu 20.04. Although it works on a clean install of Ubuntu 20.04, we had trouble with compiling the library on the Nvidia Jetson version of Ubuntu 20.04. The issue stems from the version of [OpenCV](https://opencv.org/) that is installed on the Nvidia Jetson. The version of OpenCV that is installed on the Nvidia Jetson is 4.5.1, whereas the `orbslam3` only works with OpenCV 4.2.0. We were able to get the library to compile by installing OpenCV 4.2.0 from source. The steps to do this are as follows:

```bash
# Download OpenCV 4.2.0
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.2.0.zip
unzip -q opencv.zip
rm opencv.zip

# Install apt dependencies
sudo apt install -y libgtk2.0-dev pkg-config ninja-build

# Build and install OpenCV 4.2.0 in $HOME/.local to avoid conflicts with the version of OpenCV installed on the Nvidia Jetson
CMAKE_INSTALL_PREFIX="$HOME/.local"
cmake -S . -B ./build -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="$CMAKE_INSTALL_PREFIX"
cmake --build ./build --config Release
echo "Installing OpenCV 4.2.0... to $CMAKE_INSTALL_PREFIX" 
cmake --build ./build --target install --config Release
```

Then in the `CMakeLists.txt` file of the `orbslam3` library, change the `find_package()` line that adds OpenCV to the project to:

```cmake
set(OpenCV_DIR "~/.local/lib/cmake/opencv4")
find_package(OpenCV 4.2.0 REQUIRED)
```

These changes and some other minor issues are addressed in our [fork](https://github.com/Multi-Agent-Robotics/ORB-SLAM3-STEREO-FIXED). See the [README.md](https://github.com/Multi-Agent-Robotics/ORB-SLAM3-STEREO-FIXED/blob/master/README.md) for the remaining steps to build and install the library.

