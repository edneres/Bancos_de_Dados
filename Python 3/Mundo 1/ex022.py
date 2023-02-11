# 07/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Crie um programa que leia o nome completo de uma pessoa e mostre: #
#   – O nome com todas as letras maiúsculas e minúsculas.           #
#   – Quantas letras ao todo (sem considerar espaços).              # 
#   – Quantas letras tem o primeiro nome.                           #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

nome = str(input("Digite seu nome completo: ")).strip()  # strip() elimina os espaços antes e depois

print(nome.title())
print(nome.upper())
print(nome.lower())
print(len(nome) - nome.count(' '))
print(nome.find(' '))