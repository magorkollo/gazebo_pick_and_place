#!/usr/bin/env python

import rospy

from gazebo_msgs.msg import ContactsState
from std_msgs.msg import String

def get_contacts (msg):
    if (len(msg.states) == 0):
        rospy.loginfo("No contacts were detected!")
        pub_contacts.publish("No contacts were detected!")
    else:
        if 'gripper_link_sub' in msg.states[0].collision1_name:
            rospy.loginfo("Collision detected with %s." % msg.states[0].collision2_name.split("::")[0])
            pub_contacts.publish(msg.states[0].collision2_name.split("::")[0])
            rate.sleep()
        elif 'gripper_link_sub' in msg.states[0].collision2_name:
            rospy.loginfo("Collision detected with %s." % msg.states[0].collision1_name.split("::")[0])
            pub_contacts.publish(msg.states[0].collision1_name.split("::")[0])
            rate.sleep()
        else:
            rospy.loginfo("Unknown collision")



rospy.init_node('collision_detector')

sub_contacts = rospy.Subscriber ('/contact_vals', ContactsState, get_contacts)
pub_contacts = rospy.Publisher('/contact_published', String, queue_size=10)
rate = rospy.Rate(10) # 10hz
rospy.spin()