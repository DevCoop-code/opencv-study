# CMake generated Testfile for 
# Source directory: /Users/hangyojeong/Dev/opencv-study/opencv/modules/photo
# Build directory: /Users/hangyojeong/Dev/opencv-study/build_opencv/modules/photo
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_photo "/Users/hangyojeong/Dev/opencv-study/build_opencv/bin/opencv_test_photo" "--gtest_output=xml:opencv_test_photo.xml")
set_tests_properties(opencv_test_photo PROPERTIES  LABELS "Main;opencv_photo;Accuracy" WORKING_DIRECTORY "/Users/hangyojeong/Dev/opencv-study/build_opencv/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/hangyojeong/Dev/opencv-study/opencv/cmake/OpenCVUtils.cmake;1677;add_test;/Users/hangyojeong/Dev/opencv-study/opencv/cmake/OpenCVModule.cmake;1311;ocv_add_test_from_target;/Users/hangyojeong/Dev/opencv-study/opencv/cmake/OpenCVModule.cmake;1075;ocv_add_accuracy_tests;/Users/hangyojeong/Dev/opencv-study/opencv/modules/photo/CMakeLists.txt;7;ocv_define_module;/Users/hangyojeong/Dev/opencv-study/opencv/modules/photo/CMakeLists.txt;0;")
add_test(opencv_perf_photo "/Users/hangyojeong/Dev/opencv-study/build_opencv/bin/opencv_perf_photo" "--gtest_output=xml:opencv_perf_photo.xml")
set_tests_properties(opencv_perf_photo PROPERTIES  LABELS "Main;opencv_photo;Performance" WORKING_DIRECTORY "/Users/hangyojeong/Dev/opencv-study/build_opencv/test-reports/performance" _BACKTRACE_TRIPLES "/Users/hangyojeong/Dev/opencv-study/opencv/cmake/OpenCVUtils.cmake;1677;add_test;/Users/hangyojeong/Dev/opencv-study/opencv/cmake/OpenCVModule.cmake;1213;ocv_add_test_from_target;/Users/hangyojeong/Dev/opencv-study/opencv/cmake/OpenCVModule.cmake;1076;ocv_add_perf_tests;/Users/hangyojeong/Dev/opencv-study/opencv/modules/photo/CMakeLists.txt;7;ocv_define_module;/Users/hangyojeong/Dev/opencv-study/opencv/modules/photo/CMakeLists.txt;0;")
add_test(opencv_sanity_photo "/Users/hangyojeong/Dev/opencv-study/build_opencv/bin/opencv_perf_photo" "--gtest_output=xml:opencv_perf_photo.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_photo PROPERTIES  LABELS "Main;opencv_photo;Sanity" WORKING_DIRECTORY "/Users/hangyojeong/Dev/opencv-study/build_opencv/test-reports/sanity" _BACKTRACE_TRIPLES "/Users/hangyojeong/Dev/opencv-study/opencv/cmake/OpenCVUtils.cmake;1677;add_test;/Users/hangyojeong/Dev/opencv-study/opencv/cmake/OpenCVModule.cmake;1214;ocv_add_test_from_target;/Users/hangyojeong/Dev/opencv-study/opencv/cmake/OpenCVModule.cmake;1076;ocv_add_perf_tests;/Users/hangyojeong/Dev/opencv-study/opencv/modules/photo/CMakeLists.txt;7;ocv_define_module;/Users/hangyojeong/Dev/opencv-study/opencv/modules/photo/CMakeLists.txt;0;")