# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hangyojeong/Dev/opencv-study/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hangyojeong/Dev/opencv-study/build_opencv

# Include any dependencies generated for this target.
include modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/depend.make

# Include the progress variables for this target.
include modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/progress.make

# Include the compile flags for this target's objects.
include modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/flags.make

modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.o: modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/flags.make
modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.o: /Users/hangyojeong/Dev/opencv-study/opencv/modules/gapi/samples/api_ref_snippets.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hangyojeong/Dev/opencv-study/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.o"
	cd /Users/hangyojeong/Dev/opencv-study/build_opencv/modules/gapi && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.o -c /Users/hangyojeong/Dev/opencv-study/opencv/modules/gapi/samples/api_ref_snippets.cpp

modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.i"
	cd /Users/hangyojeong/Dev/opencv-study/build_opencv/modules/gapi && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hangyojeong/Dev/opencv-study/opencv/modules/gapi/samples/api_ref_snippets.cpp > CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.i

modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.s"
	cd /Users/hangyojeong/Dev/opencv-study/build_opencv/modules/gapi && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hangyojeong/Dev/opencv-study/opencv/modules/gapi/samples/api_ref_snippets.cpp -o CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.s

# Object files for target example_gapi_api_ref_snippets
example_gapi_api_ref_snippets_OBJECTS = \
"CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.o"

# External object files for target example_gapi_api_ref_snippets
example_gapi_api_ref_snippets_EXTERNAL_OBJECTS =

bin/example_gapi_api_ref_snippets: modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/samples/api_ref_snippets.cpp.o
bin/example_gapi_api_ref_snippets: modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/build.make
bin/example_gapi_api_ref_snippets: lib/libopencv_gapi.4.5.1.dylib
bin/example_gapi_api_ref_snippets: lib/libopencv_video.4.5.1.dylib
bin/example_gapi_api_ref_snippets: lib/libopencv_highgui.4.5.1.dylib
bin/example_gapi_api_ref_snippets: lib/libopencv_dnn.4.5.1.dylib
bin/example_gapi_api_ref_snippets: lib/libopencv_calib3d.4.5.1.dylib
bin/example_gapi_api_ref_snippets: lib/libopencv_features2d.4.5.1.dylib
bin/example_gapi_api_ref_snippets: lib/libopencv_flann.4.5.1.dylib
bin/example_gapi_api_ref_snippets: lib/libopencv_videoio.4.5.1.dylib
bin/example_gapi_api_ref_snippets: lib/libopencv_imgcodecs.4.5.1.dylib
bin/example_gapi_api_ref_snippets: lib/libopencv_imgproc.4.5.1.dylib
bin/example_gapi_api_ref_snippets: lib/libopencv_core.4.5.1.dylib
bin/example_gapi_api_ref_snippets: modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/hangyojeong/Dev/opencv-study/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/example_gapi_api_ref_snippets"
	cd /Users/hangyojeong/Dev/opencv-study/build_opencv/modules/gapi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_gapi_api_ref_snippets.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/build: bin/example_gapi_api_ref_snippets

.PHONY : modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/build

modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/clean:
	cd /Users/hangyojeong/Dev/opencv-study/build_opencv/modules/gapi && $(CMAKE_COMMAND) -P CMakeFiles/example_gapi_api_ref_snippets.dir/cmake_clean.cmake
.PHONY : modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/clean

modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/depend:
	cd /Users/hangyojeong/Dev/opencv-study/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hangyojeong/Dev/opencv-study/opencv /Users/hangyojeong/Dev/opencv-study/opencv/modules/gapi /Users/hangyojeong/Dev/opencv-study/build_opencv /Users/hangyojeong/Dev/opencv-study/build_opencv/modules/gapi /Users/hangyojeong/Dev/opencv-study/build_opencv/modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/gapi/CMakeFiles/example_gapi_api_ref_snippets.dir/depend
