# OpenCV Study
Using OpenCV on Mac OSX Environment

### Installing CMake
```
brew install cmake
```
Test that it works by running
```
cmake --version
```

### Getting OpenCV Source code
[OpenCV Downloads page](https://opencv.org/releases/)

### Getting OpenCV from the Git Repository
```
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
```
opencv_contrib is a extra module(for example, tracker module)

### Building OpenCV from Source Using CMake
Create a temporary directory(ex] build_opencv) in root directory as same level as opencv
```
--[root directory]
    -- [build_opencv]   <-- temporary directory
    -- [opencv]         <-- Clone from opencv.git
```

Configuring. Run 
```
cmake [<some optional parameters>] <path to the OpenCV source directory>
```
For Example
```
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_EXAMPLES=ON ../opencv
```

Build. From build directory execute
```
make
```

Install the Library
```
make install
```

### Mac Xcode Setting
Make Xcode Command Line Tool
![commandLineTool](./images/commandLineTool.PNG)

Add Dynamic Librarys to Xcode Project
![dylibs](./images/opencv_dylibs.PNG)

Add Build Settings
- Header Search Paths: /usr/local/include/, /usr/local/include/opencv4/
- Library Search Paths: /usr/local/lib/

Disable Library Validation
![dylibs](./images/disableLibValidation.PNG)