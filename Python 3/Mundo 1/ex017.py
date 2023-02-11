# 05/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Faça um programa que leia o comprimento do cateto oposto e do cateto adjacente  #
# de um triângulo retângulo. Calcule e mostre o comprimento da hipotenusa.        #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

ca = float(input("Cateto adjacente: "))
co = float(input("Cateto oposto:    "))

hip = (ca**2 + co**2)**(1/2)

print("Hipotenusa =", hip)