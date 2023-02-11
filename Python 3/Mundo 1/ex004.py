# 05/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # #
# Faça um programa que leia algo pelo teclado #
# e mostre na tela o seu tipo primitivo e     #
# todas as informações possíveis sobre ele.   #
# # # # # # # # # # # # # # # # # # # # # # # #

var = input("Digite algo: ")

print("1. Tipo primitivo: ", type(var))
print("2. Só tem espaços? ", var.isspace())
print("3. É um número? ", var.isnumeric())
print("4. É letra? ", var.isalpha())
print("5. É alfanumérico? ", var.isalnum())
print("6. É tudo minnúsculo? ", var.islower())
print("7. É tudo em maiúsculo? ", var.isupper())
print("8. Está capitalizada? ", var.istitle())