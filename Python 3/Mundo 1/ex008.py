# 05/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # #
# Escreva um programa que leia um valor em metros e #
# o exiba convertido em centímetros e milímetros.   #
# # # # # # # # # # # # # # # # # # # # # # # # # # #

metros = float(input("Digite um valor em metros: "))

centimetros = metros * 100
milimetros  = centimetros * 10

print("{}m em centímetros:       {}".format(metros, centimetros))
print("{}m em milímetros:        {}".format(metros, milimetros))