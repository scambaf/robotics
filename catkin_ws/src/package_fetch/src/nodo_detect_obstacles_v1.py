#!/usr/bin/env python
# encoding: utf-8

#Linea 1 - â€œShebangâ€,le indicamos a la mÃ¡quina con quÃ© programa lo vamos a ejecutar.
#Linea 2 - Python 2.7 - asume que solo se utiliza ASCII en el cÃ³digo fuente
# para usar utf-8 hay que indicarlo al principio de nuestro script encoding: utf-8


import rospy                                                            #Importamos ropsy (interface de python-ROS)
from sensor_msgs.msg import LaserScan                                   #Importamas el tipo de mensaje Lasersan


def callback(mensaje): #Definimos una funciÃ³n callback
    print(mensaje.ranges) # Imprime en patalla las 240 muestras del lÃ¡ser
    print("\n")


def nodo():                                                             # Definimos una funciÃ³n nodo

    rospy.init_node('nodo_detect_obstacles')                            # Inicializamos nuestro nodo y le asignamos un nombre

    #Nos suscribimos al topico /base_scan
                               #Name Topic|tipo de mensaje|funciÃ³n
    scan_sub = rospy.Subscriber('/base_scan', LaserScan, callback)

    rospy.spin()                                                        # Mantiene corriendo el script hasta que se detiene la ejecuciÃ³n del script con Crtl+C


if __name__ == '__main__':                                              # Llamamos a la funciÃ³n principal main
    try:
        nodo()                                                          # Lamamos a la funciÃ³n nodo    
    except rospy.ROSInterruptException :                            #Check si hay una excepciÃ³n  Ctrl-C para terminar la ejecuciÃ³n del nodo
        pass