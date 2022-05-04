#!/usr/bin/env python

import sys
import rospy
from test_pkg.srv import Count_words 
from test_pkg.srv import Count_wordsRequest
from test_pkg.srv import Count_wordsResponse

def count_words_client(line):
    rospy.wait_for_service('words_counter')
    try:
        words_counter_func = rospy.ServiceProxy('words_counter', Count_words)
        resp1 = words_counter_func(line)
        return resp1
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return "%s [line: ]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 2:
        line = sys.argv[1]

    else:
        print(usage())
        sys.exit(1)
    print("Requesting [%s]"%(line))
    s = count_words_client(line)
    print("Words_Count of [\"%s\"] = %s"%(line, s))

