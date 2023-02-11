# 10/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   
# Faça um programa que leia o nome completo de uma pessoa,        #
# mostrando em seguida o primeiro e o último nome separadamente.  #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

nome = str(input("Digite seu nome: ")).strip().title()
nome_lista = nome.split(' ')

print("O seu primeiro nome é '{}'".format(nome_lista[0]))
print("O seu último nome é '{}'".format(nome_lista[len(nome_lista) - 1]))