# 05/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Crie um programa que leia quanto dinheiro uma pessoa        #
# tem na carteira e mostre quantos dólares ela pode comprar.  #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

valor = float(input("Quanto dinheiro você tem na carteira? R$ "))
cotacao_dolar = 0.190  # 1 dólar =  5.15 reais

print("Certo... você pode comprar {:.2f} em dólares!".format(valor * cotacao_dolar))