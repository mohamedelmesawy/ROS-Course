#!/usr/bin/env python

from test_pkg.srv import Adding_numbers
from test_pkg.srv import Adding_numbersRequest
from test_pkg.srv import Adding_numbersResponse

import rospy

def handle_add_two_ints(req):
    print("Returning [%s + %s = %s]"%(req.x, req.y, (req.x + req.y)))
    return Adding_numbersResponse(req.x + req.y)

def add_two_ints_server():
    rospy.init_node('add_two_ints_server')
    s = rospy.Service('add_two_ints', Adding_numbers, handle_add_two_ints)
    print("Ready to add two ints.")
    rospy.spin()
    
if __name__ == "__main__":
    add_two_ints_server()
