#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String



counter = 0

def talker():
    global counter


    # Topic must have the same NAME + Type
    pub = rospy.Publisher('chatter', String, queue_size=10)

    rospy.init_node('talker', anonymous=True)

    rate = rospy.Rate(1) #1hz

    while not rospy.is_shutdown():
        msg_content = f'Counter = {counter}'

        rospy.loginfo(msg_content)
        pub.publish(msg_content)

        rate.sleep()
        counter += 1
    
    rospy.loginfo(f'Final Counter now = {counter}')


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass