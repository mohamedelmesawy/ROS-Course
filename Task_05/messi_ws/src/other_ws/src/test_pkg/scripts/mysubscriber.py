#!/usr/bin/env python
import rospy
from test_pkg.msg import mymessage


def sensor_callback(sensor_message):
    rospy.loginfo("new data received: (%d, %s, %.2f ,%.2f)", 
        sensor_message.id,sensor_message.name,
        sensor_message.temperature,sensor_message.humidity)
    
rospy.init_node('subscriber_node', anonymous=True)

rospy.Subscriber("sensor_topic", mymessage, sensor_callback)

# spin() simply keeps python from exiting until this node is stopped
rospy.spin()