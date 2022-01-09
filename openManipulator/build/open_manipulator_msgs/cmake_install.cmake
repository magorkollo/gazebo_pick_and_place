# Install script for directory: /home/auto/Magor/openManipulator/src/open_manipulator_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_manipulator_msgs/msg" TYPE FILE FILES
    "/home/auto/Magor/openManipulator/src/open_manipulator_msgs/msg/JointPosition.msg"
    "/home/auto/Magor/openManipulator/src/open_manipulator_msgs/msg/KinematicsPose.msg"
    "/home/auto/Magor/openManipulator/src/open_manipulator_msgs/msg/OpenManipulatorState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_manipulator_msgs/srv" TYPE FILE FILES
    "/home/auto/Magor/openManipulator/src/open_manipulator_msgs/srv/GetJointPosition.srv"
    "/home/auto/Magor/openManipulator/src/open_manipulator_msgs/srv/GetKinematicsPose.srv"
    "/home/auto/Magor/openManipulator/src/open_manipulator_msgs/srv/SetJointPosition.srv"
    "/home/auto/Magor/openManipulator/src/open_manipulator_msgs/srv/SetKinematicsPose.srv"
    "/home/auto/Magor/openManipulator/src/open_manipulator_msgs/srv/SetDrawingTrajectory.srv"
    "/home/auto/Magor/openManipulator/src/open_manipulator_msgs/srv/SetActuatorState.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_manipulator_msgs/cmake" TYPE FILE FILES "/home/auto/Magor/openManipulator/build/open_manipulator_msgs/catkin_generated/installspace/open_manipulator_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/auto/Magor/openManipulator/devel/include/open_manipulator_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/auto/Magor/openManipulator/devel/share/roseus/ros/open_manipulator_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/auto/Magor/openManipulator/devel/share/common-lisp/ros/open_manipulator_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/auto/Magor/openManipulator/devel/share/gennodejs/ros/open_manipulator_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/auto/Magor/openManipulator/devel/lib/python2.7/dist-packages/open_manipulator_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/auto/Magor/openManipulator/devel/lib/python2.7/dist-packages/open_manipulator_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/auto/Magor/openManipulator/build/open_manipulator_msgs/catkin_generated/installspace/open_manipulator_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_manipulator_msgs/cmake" TYPE FILE FILES "/home/auto/Magor/openManipulator/build/open_manipulator_msgs/catkin_generated/installspace/open_manipulator_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_manipulator_msgs/cmake" TYPE FILE FILES
    "/home/auto/Magor/openManipulator/build/open_manipulator_msgs/catkin_generated/installspace/open_manipulator_msgsConfig.cmake"
    "/home/auto/Magor/openManipulator/build/open_manipulator_msgs/catkin_generated/installspace/open_manipulator_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_manipulator_msgs" TYPE FILE FILES "/home/auto/Magor/openManipulator/src/open_manipulator_msgs/package.xml")
endif()

