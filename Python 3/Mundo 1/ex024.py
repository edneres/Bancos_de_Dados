# 10/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # 
# Crie um programa que leia o nome de uma cidade  #
# e diga se ela começa ou não com o nome “SANTO”. #
# # # # # # # # # # # # # # # # # # # # # # # # # # 

cidade = str(input("Nome da cidade: ")).strip().title()
nomes  = cidade.split(' ')

# nome = cidade[:5]

if nomes[0] == "Santo":
    print("S")

else:
    print("N")