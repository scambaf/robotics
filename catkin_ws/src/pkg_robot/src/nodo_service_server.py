#!/usr/bin/env python                         
# encoding: utf-8

#Linea 1 - “Shebang”,le indicamos a la máquina con qué programa lo vamos a ejecutar.
#Linea 2 - Python 2.7 - asume que solo se utiliza ASCII en el código fuente
# para usar utf-8 hay que indicarlo al principio de nuestro script encoding: utf-8


import rospy                                                                #Importamos ropsy (interface de python-ROS) 

from pkg_robot.srv import sum_two_int, sum_two_intResponse        #Importamos módulos generados por nuestro servicio

def handle_sum_two_int(req):                                                #Definimos para procesar la data enviada por el Cliente
    print ("Returning [%s + %s = %s]"%(req.a, req.b, (req.a + req.b)))      #Imprimimos en pantalla los valores que recibimos
    return sum_two_intResponse(req.a + req.b)                               #Retornamos al Cliente, el resultado de la suma de dos números enteros

def nodo():                                                                 #Definimos una función nodo                                   
    
    rospy.init_node('nodo_suma_two_ints_server')                            #Inicializamos nuestro nodo y le asignamos un nombre = nodo_suma_two_ints_server

    #Declaramos nuestro Servicio Server    
    #Name Service|Clase Servicio|Función para procesar la data enviada por el Cliente     
    s = rospy.Service('sum_two_int', sum_two_int, handle_sum_two_int)   
    
    print("Ready to add two ints.") #Imprimimos un mensaje en pantalla
    
    rospy.spin()                    #Mantiene corriendo el script hasta que se pulsa Crtl+C

if __name__ == '__main__':                                  
    try:
        nodo()                                                              # Lamamos a la función nodo
    except rospy.ROSInterruptException:                                     # Check si hay una excepción  Ctrl-C para terminar la ejecución del nodo
        pass