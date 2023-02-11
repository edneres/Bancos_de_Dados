# 10/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # 
# Crie um programa que leia o nome de uma pessoa  #
# e diga se ela tem “SILVA” no nome.              #
# # # # # # # # # # # # # # # # # # # # # # # # # # 

nome = str(input("Qual o seu nome? ")).strip().title()

if "Silva" in nome:
    print("S")

else:
    print("N")