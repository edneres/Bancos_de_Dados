# 05/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Faça um programa que leia um ângulo qualquer e mostre     #
# na tela o valor do seno, cosseno e tangente desse ângulo. #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

from math import sin
from math import cos
from math import tan
from math import pi

angulo = float(input("Angulo: "))
angulo = angulo * (pi/180)

print("Seno: {:.2f}\nCosseno: {:.2f}\nTangente: {:.2f}".format(sin(angulo), cos(angulo), tan(angulo)))