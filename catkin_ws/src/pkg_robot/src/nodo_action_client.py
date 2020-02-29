#!/usr/bin/env python                         
# encoding: utf-8

#Linea 1 - â€œShebangâ€,le indicamos a la mÃ¡quina con quÃ© programa lo vamos a ejecutar.
#Linea 2 - Python 2.7 - asume que solo se utiliza ASCII en el cÃ³digo fuente
# para usar utf-8 hay que indicarlo al principio de nuestro script encoding: utf-8

import rospy                                                    #Importamos ropsy (interface de python-ROS) 
import actionlib                                                #Importamos actionlib para hacer uso de acciones en ROS
from pkg_robot.msg import DoCarWashAction, DoCarWashGoal    #Importamos los mensajes de nuestra acciÃ³n


def feedback_cb(msg):                                           #Definimos una funciÃ³n feedback_cb
   
    print('Feedback received -> '+str(msg)+'%')                 #Imprimimos en pantalla el feebback que envÃ­a el Action Server


def call_server():                                                        #Definimos una funciÃ³n call_server

    client = actionlib.SimpleActionClient('do_wash_car', DoCarWashAction) #Declaramos nuestra AcciÃ³n Cliente con nombre do_wash_car        

    client.wait_for_server()                                              #Si el Action Server no estÃ¡ disponible; esperamos

    goal = DoCarWashGoal()                                                #Definimos nuestra variable de tipo Goal

    goal.number_of_cars = 5                                               #Definimos el nÃºmero de AutomÃ³viles

    client.send_goal(goal, feedback_cb=feedback_cb)                       #Enviamos nuestro objetivo, y pasamos una funciÃ³n de Feedback

    client.wait_for_result()                                              #Esperamos el resultado hasta que el Action Server procese todo

    result = client.get_result()                                          #Obtenemos el resultado

    return result                                                         #Retornamos el resultado


if __name__ == '__main__':

    try:
        rospy.init_node('nodo_action_client')                            #Definimos el nombre de nuestro nodo

        result = call_server()                                           #Llamamos a nuestra funciÃ³n call_server()

        print("The result is: ", result)                                 #Imprimimos en pantalla el resultado

    except rospy.ROSInterruptException :                                 #Check si hay una excepciÃ³n  Ctrl-C para terminar la ejecuciÃ³n del nodo
        pass