#!/usr/bin/env python

from test_pkg.srv import Count_words 
from test_pkg.srv import Count_wordsRequest
from test_pkg.srv import Count_wordsResponse
import rospy

def handle_words_counter(req):
    print("Returning words_count of [\"%s\"] = %s"%(req.line, len(req.line.split()) )) 
    
    return Count_wordsResponse(len(req.line.split()))

def words_count_server():
    rospy.init_node('words_counter_server')
    s = rospy.Service('words_counter', Count_words, handle_words_counter)
    print("Ready to count words.")
    rospy.spin()
    
if __name__ == "__main__":
    words_count_server()
