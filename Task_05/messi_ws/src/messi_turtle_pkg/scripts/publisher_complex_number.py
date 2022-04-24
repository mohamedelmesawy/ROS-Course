#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String
import numpy as np

def talker():

    # Topic must have the same NAME + Type
    pub = rospy.Publisher('chatter', String, queue_size=10)

    rospy.init_node('talker', anonymous=True)

    rate = rospy.Rate(1) #1hz

    while not rospy.is_shutdown():
        # comp_num = complex(real=1, imag=1)
        comp_num =  np.round(np.random.random(1), 2) + np.round(np.random.random(1), 2)  * 1j
        msg_content = f'complex Number = {comp_num}'

        rospy.loginfo(msg_content)
        pub.publish('Generated ' + msg_content)

        rate.sleep()


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass