#!/usr/bin/env python

import rospy
from gazebo_msgs.msg import ContactsState
from std_msgs.msg import String
import time
rospy.init_node('collision_detector2')
from gazebo_ros_link_attacher.srv import Attach, AttachRequest, AttachResponse
rate = rospy.Rate(10)
detectedObject = None 
def get_contacts (msg):
    if (len(msg.states) == 0):
        rospy.loginfo("No contacts were detected!")
        rate.sleep()
    else:
        if 'gripper_link_sub' in msg.states[0].collision1_name:
            #rospy.loginfo("Collision 1 detected with %s." % msg.states[0].collision2_name.split("::")[0])
            global detectedObject
            detectedObject = msg.states[0].collision2_name.split("::")[0]
            rate.sleep()
        elif 'gripper_link_sub' in msg.states[0].collision2_name:
            #rospy.loginfo("Collision 2 detected with %s." % msg.states[0].collision1_name.split("::")[0])
            detectedObject = msg.states[0].collision1_name.split("::")[0]
            rate.sleep()
        else:
            rospy.loginfo("Unknown collision")

if __name__ == '__main__':
    t_end = time.time() + 0.5
    while time.time() < t_end:
        sub_contacts = rospy.Subscriber ('/contact_vals', ContactsState, get_contacts)
    #global detectedObject
    if detectedObject is not None:
        print(detectedObject)
        rospy.loginfo("Creating ServiceProxy to /link_attacher_node/attach")
        attach_srv = rospy.ServiceProxy('/link_attacher_node/attach',
                                        Attach)
        attach_srv.wait_for_service()
        rospy.loginfo("Created ServiceProxy to /link_attacher_node/attach")

        # Link them
        rospy.loginfo("Attaching gripper and red box")
        req = AttachRequest()
        req.model_name_1 = "robot"
        req.link_name_1 = "gripper_link_sub"
        req.model_name_2 = detectedObject
        req.link_name_2 = "link"

        attach_srv.call(req)
    else:
        print("No object detected -> no collision")



# t_end = time.time() + 0.1
# while time.time() < t_end:
#     sub_contacts = rospy.Subscriber ('/contact_vals', ContactsState, get_contacts)

# print(detectedObject)