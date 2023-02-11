# 05/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # #
#  Desenvolva um programa que leia as duas          #
#  notas de um aluno, calcule e mostre a sua média. #
# # # # # # # # # # # # # # # # # # # # # # # # # # #

n1_n2 = input("Digite as duas notas do aluno (,): ")
n1, n2 = n1_n2.split(",")
n1 = float(n1)
n2 = float(n2)

print("A média das notas é ", (n1 + n2)/2)
print("A média das notas é {:.1f}".format(((n1 + n2)/2)))