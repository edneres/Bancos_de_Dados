# 05/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Faça um algoritmo que leia o salário de um funcionário  #
# e mostre seu novo salário, com 15% de aumento.          #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

salario = float(input("Digite o valor do salário: R$ "))
novo_salario = salario * 1.15

print("O salário após o aumento de 15% é de R$ {:.2f}".format(novo_salario))