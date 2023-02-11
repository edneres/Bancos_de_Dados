# 05/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Faça um programa que leia a largura e a altura de uma parede                          #
# em metros, calcule a sua área e a quantidade de tinta necessária                      #
# para pintá-la, sabendo que cada litro de tinta pinta uma área de 2 metros quadrados   #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

largura = float(input("\nLargura (m): "))
altura  = float(input("Altura (m):  "))

tinta = (largura * altura)/2 

print("\nA área total da parede é {} metros quadrados.".format(largura * altura))
print("A quantidade de tinta necessária para pintá-la é de {:.2f}l.\n".format(tinta))