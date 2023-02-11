# 10/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #  
# Faça um programa que leia uma frase pelo teclado e mostre quantas vezes aparece a letra “A”,  #
# em que posição ela aparece a primeira vez e em que posição ela aparece a última vez.          # 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

frase = str(input("Digite uma frase: ")).strip().upper()

print("Quantas vezes o 'A' aparece?", frase.count("A"))

# find, rfind