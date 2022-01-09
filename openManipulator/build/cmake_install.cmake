# Install script for directory: /home/auto/Magor/openManipulator/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/auto/Magor/openManipulator/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/auto/Magor/openManipulator/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/auto/Magor/openManipulator/install" TYPE PROGRAM FILES "/home/auto/Magor/openManipulator/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/auto/Magor/openManipulator/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/auto/Magor/openManipulator/install" TYPE PROGRAM FILES "/home/auto/Magor/openManipulator/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/auto/Magor/openManipulator/install/setup.bash;/home/auto/Magor/openManipulator/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/auto/Magor/openManipulator/install" TYPE FILE FILES
    "/home/auto/Magor/openManipulator/build/catkin_generated/installspace/setup.bash"
    "/home/auto/Magor/openManipulator/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/auto/Magor/openManipulator/install/setup.sh;/home/auto/Magor/openManipulator/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/auto/Magor/openManipulator/install" TYPE FILE FILES
    "/home/auto/Magor/openManipulator/build/catkin_generated/installspace/setup.sh"
    "/home/auto/Magor/openManipulator/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/auto/Magor/openManipulator/install/setup.zsh;/home/auto/Magor/openManipulator/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/auto/Magor/openManipulator/install" TYPE FILE FILES
    "/home/auto/Magor/openManipulator/build/catkin_generated/installspace/setup.zsh"
    "/home/auto/Magor/openManipulator/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/auto/Magor/openManipulator/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/auto/Magor/openManipulator/install" TYPE FILE FILES "/home/auto/Magor/openManipulator/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/auto/Magor/openManipulator/build/gtest/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/dynamixel-workbench/dynamixel_workbench/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator/open_manipulator/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator_controls/open_manipulator_controls/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator_simulations/open_manipulator_simulations/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/dynamixel-workbench-msgs/dynamixel_workbench_msgs/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator_msgs/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/DynamixelSDK/ros/dynamixel_sdk/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/DynamixelSDK/ros/dynamixel_sdk_examples/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/dynamixel-workbench/dynamixel_workbench_toolbox/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator_tools/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/robotis_manipulator/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator/open_manipulator_libs/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator_controls/open_manipulator_hw/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/dynamixel-workbench/dynamixel_workbench_controllers/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/dynamixel-workbench/dynamixel_workbench_operators/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator/open_manipulator_control_gui/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator/open_manipulator_controller/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator/open_manipulator_teleop/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/gazebo_ros_link_attacher/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/roboticsgroup_gazebo_plugins/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator_controls/open_manipulator_controllers/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator_ikfast_plugin/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator/open_manipulator_description/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator_simulations/open_manipulator_gazebo/cmake_install.cmake")
  include("/home/auto/Magor/openManipulator/build/open_manipulator_controls/open_manipulator_moveit_config/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/auto/Magor/openManipulator/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
