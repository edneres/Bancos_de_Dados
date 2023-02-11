# 05/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # #
# Faça um algoritmo que leia o preço de um produto  #
# e mostre seu novo preço, com 5% de desconto.      #
# # # # # # # # # # # # # # # # # # # # # # # # # # # 

preco = float(input("Digite o preço do produto: R$ "))
preco_final = preco * 0.95

print("O preço com o desconto de 5% é R$ {:.2f}".format(preco_final))