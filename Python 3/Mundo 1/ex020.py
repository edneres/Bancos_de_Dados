# 05/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# O mesmo professor do desafio 19 quer sortear a ordem de apresentação  #
# de trabalhos dos alunos. Faça um programa que leia o nome dos quatro  #
# alunos e mostre a ordem sorteada.                                     #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

import random

al1 = input("Nome do aluno 1: ")
al2 = input("Nome do aluno 2: ")
al3 = input("Nome do aluno 3: ")
al4 = input("Nome do aluno 4: ")

lista = [al1, al2, al3, al4]
random.shuffle(lista)

print("\nA ordem de apresentação é:", lista)