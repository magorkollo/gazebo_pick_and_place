#!/usr/bin/env python

import rospy
from gazebo_ros_link_attacher.srv import Attach, AttachRequest, AttachResponse


if __name__ == '__main__':
    rospy.init_node('demo_detach_links')
    rospy.loginfo("Creating ServiceProxy to /link_attacher_node/detach")
    attach_srv = rospy.ServiceProxy('/link_attacher_node/detach',
                                    Attach)
    attach_srv.wait_for_service()
    rospy.loginfo("Created ServiceProxy to /link_attacher_node/detach")

    # Link them
    rospy.loginfo("Detaching gripper and red")
    req = AttachRequest()
    req.model_name_1 = "robot"
    req.link_name_1 = "gripper_link_sub"
    req.model_name_2 = "red_box"
    req.link_name_2 = "link"

    attach_srv.call(req)
    # From the shell:
    """
rosservice call /link_attacher_node/detach "model_name_1: 'cube1'
link_name_1: 'link'
model_name_2: 'cube2'
link_name_2: 'link'"
    """

    # Link them
    rospy.loginfo("Detaching gripper and red box 2")
    req = AttachRequest()
    req.model_name_1 = "robot"
    req.link_name_1 = "gripper_link_sub"
    req.model_name_2 = "red_box2"
    req.link_name_2 = "link"

    attach_srv.call(req)

    # rospy.loginfo("Attaching cube2 and cube3")
    # req = AttachRequest()
    # req.model_name_1 = "cube2"
    # req.link_name_1 = "link"
    # req.model_name_2 = "cube3"
    # req.link_name_2 = "link"

    # attach_srv.call(req)

    # rospy.loginfo("Attaching cube3 and cube1")
    # req = AttachRequest()
    # req.model_name_1 = "cube3"
    # req.link_name_1 = "link"
    # req.model_name_2 = "cube1"
    # req.link_name_2 = "link"

    # attach_srv.call(req)
