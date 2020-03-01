#!/usr/bin/env python
# encoding: utf-8

#Linea 1 - â€œShebangâ€,le indicamos a la mÃ¡quina con quÃ© programa lo vamos a ejecutar.
#Linea 2 - Python 2.7 - asume que solo se utiliza ASCII en el cÃ³digo fuente
# para usar utf-8 hay que indicarlo al principio de nuestro script encoding: utf-8


import rospy                                                    #Importamos ropsy (interface de python-ROS)
from sensor_msgs.msg import LaserScan                           #Importamos el tipo de mensaje Lasersan
from geometry_msgs.msg import Twist                             #Importamos el tipo de mensaje Twist
import random

#Definimos Constantes
MIN_DIST = 1.0      #Distancia MÃ­nima para detectar obstÃ¡culos = 1 metro 
MAX_DIST = 3.5      #Distancia MÃ¡xima = 3.5 metros

#Definimos Variables
left = ahead = right = 1.0  #valores mÃ­nimos de cada regiÃ³n del lÃ¡ser
linear_x = 0.5              #velocidad lineal = 0.5 m/s
angular_z = 0.5             #velocidad angular = 0.5 rad/seg

'''
 FunciÃ³n callback - Procesa las 240 muestras del lÃ¡ser para detectar obstÃ¡culos
 y nos devuelve el valor mÃ­nimo de las Ã¡reas de la derecha,izquierda y enfrente 
 del lÃ¡ser del robot

'''

def callback(mensaje):

    #DeclaraciÃ³n de variables globales
    global left, ahead, right
    
    scan_range = [] #Definimos una lista vacÃ­a

    for i in range(len(mensaje.ranges)):
        if mensaje.ranges[i] == float('Inf'): #Si el sensor no detecta nada 
            scan_range.append(MAX_DIST)        #le asigamos un valor de 3.5m
        else:
            scan_range.append(mensaje.ranges[i]) #Si tiene un valor, lo agregamos a nuestra lista scan_range

    #Regiones = 240/3 = 80 muestras

    left = min(scan_range[0:79]) #muestras de 0:79
    ahead = min(scan_range[80:159]) #muestras de 80:159
    right = min(scan_range[160:239]) #muestras de 160:239

    # print("Left = %f , Ahead = %f , Right = %f" % (left,ahead,right))

    
def nodo():                                    # Definimos una funciÃ³n nodo

    rospy.init_node('nodo_detect_avoid')   # Inicializamos nuestro nodo y le asignamos un nombre = nodo_detect_obstacles

    
    '''
    Para procesar la data del lÃ¡ser del robot nos subcribimos al tÃ³pico /base_scan
    Creamos la variable scan_sub que es de tipo Subscriber
    '''
                                #Name Topic|tipo de mensaje|funciÃ³n
    scan_sub = rospy.Subscriber('/base_scan', LaserScan, callback)

    '''
    Como nuestro robot va a realizar movimientos, creamos la variable velocity_publisher que es de tipo publisher
    y publicamos el tÃ³pico /base_controller/command
    '''   
                                             # Name Topic   |tipo de mensaje|lÃ­mite de 10 mensajes en cola 
    velocity_publisher = rospy.Publisher('/base_controller/command', Twist, queue_size=10)

    rate = rospy.Rate(10) #10Hz

    while not rospy.is_shutdown():  

        vel_msg = Twist()       #Definimos una variable de tipo Twist

        action_description = ''  #Definimos una variable de tipo String, para almacenar el tipo de movimiento del robot
        
        #Condiciones del robot cuando detecta un obstÃ¡culo menor a 1 metro

        #1- El robot irÃ¡ hacia adelante, por que el lÃ¡ser no detecta ningÃºn obstÃ¡culo a una distancia menor a 1 metro.
        if (left > MIN_DIST and ahead > MIN_DIST and right > MIN_DIST):
            action_description = 'Forward' #Asignamos el tipo de movimiento
            vel_msg.linear.x = linear_x    #Asignamos la velocidad lineal 

        #2- El robot gira hacia la derecha, por que el lÃ¡ser detecta un obstÃ¡culo 
        #   a una distancia menor a 1 metro a la izquierda del robot.
        elif left < ahead and left < right and left < MIN_DIST:
            action_description = 'Turn right'   #Asignamos el tipo de movimiento
            vel_msg.linear.x = linear_x     #Asignamos la velocidad lineal 
            vel_msg.angular.z = -angular_z  #Asignamos la velocidad angular

        #3- El robot darÃ¡ marcha atrÃ¡s, porque el lÃ¡ser detecta un obstÃ¡culo 
        #   a una distancia menor a 1.0 metro, enfrente del robot.
        elif ahead < left and ahead < right and ahead < MIN_DIST:
            action_description = 'Backforward' #Asignamos el tipo de movimiento
            vel_msg.linear.x = -linear_x - 1.0             
            if random.random() > 0.5:
                vel_msg.angular.z = -angular_z - 1.0    #Gira hacia la derecha                           
            else:
                vel_msg.angular.z = angular_z + 1.0     #Gira hacia la izquierda          

        #4- El robot gira hacia la izquierda, por que el lÃ¡ser detecta un obstÃ¡culo 
        #   a una distancia menor a 1.0 metro a la derecha del robot.
        elif right < left and right < ahead and right < MIN_DIST:
            action_description = 'Turn left' #Asignamos el tipo de movimiento
            vel_msg.linear.x = linear_x     #Asignamos la velocidad lineal
            vel_msg.angular.z = angular_z   #Asignamos la velocidad angular

        else:
            action_description = 'unknown case' #Asignamos el tipo de movimiento

        rospy.logwarn(action_description)    #Imprimimos el tipo de movimiento en pantalla

        velocity_publisher.publish(vel_msg)  #publicamos nuestro mensaje vel_msg para mover la base del robot
                                                    
        rate.sleep()                         #Loop 10 times per second


if __name__ == '__main__':                   # Llamamos a la funciÃ³n principal main
    try:
        nodo()                               # Lamamos a la funciÃ³n nodo    
    except rospy.ROSInterruptException :     # Check si hay una excepciÃ³n - Ctrl-C para terminar la ejecuciÃ³n del nodo
        pass
