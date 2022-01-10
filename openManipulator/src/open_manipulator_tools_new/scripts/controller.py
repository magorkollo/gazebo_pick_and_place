#!/usr/bin/env python

import rospy
import math
import time

from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint

rospy.init_node('controller')
pubGripper = rospy.Publisher('/gripper_controller/command', JointTrajectory, queue_size=1)
pubArm = rospy.Publisher('/arm_controller/command', JointTrajectory, queue_size=1)

controller_name1 = "arm_controller"
controller_name2 = "gripper_controller"

arm_joints = rospy.get_param("/%s/joints" % controller_name1)
gripper_joints = rospy.get_param("/%s/joints" % controller_name2)

rospy.loginfo("Arm joints: %s" % arm_joints)
rospy.loginfo("Arm joints: %s" % gripper_joints)
rate = rospy.Rate(10)


def inverse_kinematics(coords, gripper_angle = 0):
    '''
    Calculates the joint angles according to the desired TCP coordinate and gripper angle
    :param coords: list, desired [X, Y, Z] TCP coordinates
    :param gripper_angle: float, gripper angle in woorld coordinate system (0 = horizontal, pi/2 = vertical)
    :return: list, the list of joint angles, including the 2 gripper fingers
    '''
    # link lengths
    l1 = 0.128
    l2 = 0.024
    l1c = 0.13023 # ua_link = combined l1 - l2 length
    l3 = 0.124    # fa_link
    l4 = 0.126    # tcp_link

    # base offsets
    x_offset = 0.012
    z_offset = 0.0595 + 0.017

    # joint offsets due to combined l1 - l2
    j1_offset = math.atan(l2/l1)
    j2_offset = math.pi/2.0 + j1_offset # includes +90 degrees offset, too

    # default return list
    angles = [0,0,0,0]

    # Calculate the shoulder pan angle from x and y coordinates
    j0 = math.atan(coords[1]/(coords[0] - x_offset))

    # Re-calculate target coordinated to the wrist joint (x', y', z')
    x = coords[0] - x_offset - l4 * math.cos(j0) * math.cos(gripper_angle)
    y = coords[1] - l4 * math.sin(j0) * math.cos(gripper_angle)
    z = coords[2] - z_offset + math.sin(gripper_angle) * l4

    # Solve the problem in 2D using x" and z'
    x = math.sqrt(y*y + x*x)

    # Let's calculate auxiliary lengths and angles
    c = math.sqrt(x*x + z*z)
    alpha = math.asin(z/c)
    beta = math.pi - alpha
    # Apply law of cosines
    gamma = math.acos((l1c*l1c + c*c - l3*l3)/(2*c*l1c))

    j1 = math.pi/2.0 - alpha - gamma - j1_offset
    j2 = math.acos((l1c*l1c + l3*l3 - c*c)/(2*l1c*l3)) - j2_offset
    delta = math.pi - j2 - gamma - j2_offset

    j3 = math.pi + gripper_angle - beta - delta

    angles[0] = j0
    angles[1] = j1
    angles[2] = -j2
    angles[3] = j3

    return angles

def open_gripper(trajectory_command):

    point = JointTrajectoryPoint()
    point.positions = [0.18]
    point.velocities = [0.0]
    point.time_from_start = rospy.rostime.Duration(1,0)
    trajectory_command.points = [point]

    t_end = time.time() + 2
    while time.time() < t_end:
        trajectory_command.header.stamp = rospy.Time.now()
        pubGripper.publish(trajectory_command)
        rate.sleep()


def close_gripper(trajectory_command):

    point = JointTrajectoryPoint()
    point.positions = [-0.09]
    point.velocities = [0.0]
    point.time_from_start = rospy.rostime.Duration(1,0)
    trajectory_command.points = [point]
    
    t_end = time.time() + 2
    while time.time() < t_end:
        trajectory_command.header.stamp = rospy.Time.now()
        pubGripper.publish(trajectory_command)
        rate.sleep()

def send_coordinates(coords, g_angle):
    print(coords)
    arm_joint_angles = inverse_kinematics(coords, g_angle)
    #joint_angles = inverse_kinematics([0.2, 0, 0.075], math.pi/2.0)

    arm_point.positions = arm_joint_angles
    arm_point.velocities = [0.0, 0.0, 0.0, 0.0]
    arm_point.time_from_start = rospy.rostime.Duration(1,0)

    trajectory_arm.points = [arm_point]

    t_end = time.time() + 2
    while time.time() < t_end:
        trajectory_arm.header.stamp = rospy.Time.now()
        pubArm.publish(trajectory_arm)
        rate.sleep()

trajectory_arm = JointTrajectory()
trajectory_arm.joint_names = arm_joints

trajectory_gripper = JointTrajectory()
trajectory_gripper.joint_names = gripper_joints

arm_point = JointTrajectoryPoint()

# ----------- PICK AND PLACE - FIRST OBJECT -----------

coords = [0.2, 0, 0.075]
gripper_angle = math.pi/2.0
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

coords = [0.03, -0.06, 0.085]
gripper_angle = 0.9
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

rospy.loginfo("Press ENTER after checking if everything went correctly!")
raw_input()

open_gripper(trajectory_gripper)
time.sleep(1)

coords = [0.075, -0.2, 0.195]
gripper_angle = 0
send_coordinates(coords, gripper_angle)
time.sleep(0.5)


coords = [0.10, -0.19, 0.075]
gripper_angle = 0
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

close_gripper(trajectory_gripper)
time.sleep(1)

rospy.loginfo("Press ENTER after checking if everything went correctly!")
raw_input()

coords = [0.075, -0.2, 0.195]
gripper_angle = 0
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

coords = [0.075, 0.22, 0.195]
gripper_angle = 0
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

coords = [0.075, 0.22, 0.075]
gripper_angle = 0
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

open_gripper(trajectory_gripper)
time.sleep(1)

rospy.loginfo("Press ENTER after checking if everything went correctly!")
raw_input()

coords = [0.075, 0.22, 0.195]
gripper_angle = 0
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

# ----------- PICK AND PLACE - SECOND OBJECT -----------

coords = [0.075, -0.05, 0.195]
gripper_angle = math.pi/3
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

coords = [0.25, -0.18, 0.075]
gripper_angle = 0
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

close_gripper(trajectory_gripper)
time.sleep(1)

rospy.loginfo("Press ENTER after checking if everything went correctly!")
raw_input()

coords = [0.075, -0.05, 0.195]
gripper_angle = 0
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

coords = [0.075, 0.1, 0.195]
gripper_angle = 0
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

coords = [0.18, 0.1, 0.075]
gripper_angle = 0.05
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

open_gripper(trajectory_gripper)
time.sleep(1)

rospy.loginfo("Press ENTER after checking if everything went correctly!")
raw_input()

coords = [0.18, 0.1, 0.195]
gripper_angle = 0.05
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

coords = [0.18, 0.0, 0.195]
gripper_angle = 0.05
send_coordinates(coords, gripper_angle)
time.sleep(0.5)

rospy.loginfo("The robotic arm finished its ")