# 05/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Um professor quer sortear um dos seus quatro alunos para      #
# apagar o quadro. Faça um programa que ajude ele, lendo o nome #
# dos alunos e escrevendo na tela o nome do escolhido.          #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
import random

al1 = input("Nome do aluno 1: ")
al2 = input("Nome do aluno 2: ")
al3 = input("Nome do aluno 3: ")
al4 = input("Nome do aluno 4: ")
lista = [al1, al2, al3, al4]

print("\nX alunx que apagrá o quadro é:", random.choice(lista))