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

# Utility rule file for opencv_perf_tests.

# Include the progress variables for this target.
include CMakeFiles/opencv_perf_tests.dir/progress.make

opencv_perf_tests: CMakeFiles/opencv_perf_tests.dir/build.make

.PHONY : opencv_perf_tests

# Rule to build all files generated by this target.
CMakeFiles/opencv_perf_tests.dir/build: opencv_perf_tests

.PHONY : CMakeFiles/opencv_perf_tests.dir/build

CMakeFiles/opencv_perf_tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opencv_perf_tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opencv_perf_tests.dir/clean

CMakeFiles/opencv_perf_tests.dir/depend:
	cd /Users/hangyojeong/Dev/opencv-study/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hangyojeong/Dev/opencv-study/opencv /Users/hangyojeong/Dev/opencv-study/opencv /Users/hangyojeong/Dev/opencv-study/build_opencv /Users/hangyojeong/Dev/opencv-study/build_opencv /Users/hangyojeong/Dev/opencv-study/build_opencv/CMakeFiles/opencv_perf_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opencv_perf_tests.dir/depend

