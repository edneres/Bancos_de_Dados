# 10/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # Escreva um programa que faça o computador “pensar” em um número inteiro entre 0 e 5 # 
# e peça para o usuário tentar descobrir qual foi o número escolhido pelo computador.   #
# O programa deverá escrever na tela se o usuário venceu ou perdeu.                     #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

from random import randint

segredo = randint(0, 5)

jogadas = 3

while jogadas > 0:

    jogada  = int(input("Em qual número eu pensei? [chance(s): {}] ".format(jogadas)))

    if jogada == segredo:
        print("Parabéns! Você acertou :)")
        break

    else:
        print("Que paia... você errou :(")
        jogadas -= 1