# 10/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Escreva um programa que leia a velocidade de um carro.                      #
# Se ele ultrapassar 80Km/h, mostre uma mensagem dizendo que ele foi multado. #
# A multa vai custar R$7,00 por cada Km acima do limite.                      #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

km = float(input("Leitura do radar (km): "))

if km > 80 :
    print("Motorista multado!")
    print("Valor da multa: R$ {:.2f}".format((km - 80) * 7))

else:
    print("Motorista liberado!")