# 10/02/23 #
# EDIVÂNIA #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Faça um programa que leia um número de 0 a 9999 e mostre na tela  #
# cada um dos dígitos separados.                                    #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

num = int(input("Digite um número: "))

milhar  = (num // 1000)                                                     # m = (9818 // 1000) == 9
centena = (num // 100) - (milhar * 10)                                      # c = (9818 // 100)  == 98  >> c = (9818 // 100) - (m * 10) == 8
dezena  = (num // 10)  - (milhar * 100) - (centena * 10)                    # d = (9818 // 10)   == 981 >> d = (9818 // 10)  - (c * 10) - (m * 100) == 1 
unidade = num - (milhar * 1000) - (dezena * 10) - (centena * 100)           # u = 9818 - (d * 10) - (c * 100) - (m * 1000)

print("Milhar:  ", milhar)
print("Centena: ", centena)
print("Dezena:  ", dezena)
print("Unidade: ", unidade)

####################################################################

n = int(input("Digite um número: "))

u = (n % 10)                   # u = (9818 % 10) = 8
d = (n % 100)   - u            # d = (9818 % 100) = 18 >> d = (9818 % 100) - u = 10 
c = (n % 1000)  - u - d        # c = (9818 % 1000) = 818 >> c = (9818 % 1000) - u - d= 800
m = (n % 10000) - u - d - c    # m = (9818 % 10000) = 9818 >> m = (9818 % 10000) - u - d - c = 9000

print("{} + {} + {} + {} = {}".format(m, c, d, u, n))