#!/usr/bin/env python
# encoding: utf-8

import rospy

def nodo():
    
    rospy.init_node('nodo1')
    
    msg = 'Hello world'
    rospy.loginfo(msg)

if __name__ == '__main__':
    try:
        nodo()
    except rospy.ROSInterruptException:
        print("An exception was occured!")
