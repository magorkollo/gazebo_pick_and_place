#!/usr/bin/env python

import math

def forward_kinematics(joint_angles):
    '''
    Calculates the TCP coordinates from the joint angles
    :param joint_angles: list, joint angles [j0, j1, j2, j3]
    :return: list, the list of TCP coordinates
    '''
    # link lengths
    l1 = 0.128
    l2 = 0.024
    l3 = 0.124
    l4 = 0.126

    # offsets
    x_offset = 0.012
    z_offset = 0.0595 + 0.017

    x = x_offset + (l1 * math.sin(joint_angles[1]) + l2 * math.cos(joint_angles[1]) + l3 * math.cos(joint_angles[1] + joint_angles[2]) + l4 * math.cos(joint_angles[1] + joint_angles[2] + joint_angles[3])) * math.cos(joint_angles[0])
    y = (l1 * math.sin(joint_angles[1]) + l2 * math.cos(joint_angles[1]) + l3 * math.cos(joint_angles[1] + joint_angles[2]) + l4 * math.cos(joint_angles[1] + joint_angles[2] + joint_angles[3])) * math.sin(joint_angles[0])
    z = z_offset + l1 * math.cos(joint_angles[1]) - l2 * math.sin(joint_angles[1]) - l3 * math.sin(joint_angles[1] + joint_angles[2]) - l4 * math.sin(joint_angles[1] + joint_angles[2] + joint_angles[3])

    return [x,y,z]

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

# Test forward kinematics
print(forward_kinematics([-69,-101,36,87]))
#print(forward_kinematics([0.25,0.4,-0.2,0.35]))
#print(forward_kinematics([-0.5,-0.15,0.25,0.85]))

joint_angles = inverse_kinematics([0.286, 0, 0.2045], 0)
print(forward_kinematics(joint_angles))
