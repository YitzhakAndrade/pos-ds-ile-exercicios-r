# 1.4 - Dada a matriz A definida a seguir, obtenha o que se pede:
#     | 35 72 45 |
# A = | 20  9 17 |
#     | 13 16 78 |
a = matrix(
  c(35, 20, 13, 72, 9, 16, 45, 17, 78),
  nrow=3, ncol=3)

# a) obtenha os elementos da diagonal principal. Dica: existe uma função que faz isso.;
diag(a)

# b) obtenha a soma dos elementos da matriz;
sum(a)

# c) obtenha a soma dos elementos da primeira linha e da segunda coluna
sum(a[1,], a[,2])

# d) obtenha a soma da primeira coluna com com a terceira linha
sum(a[,1], a[3,])

# e) faça a trasposição da matriz;
t(a)

# f) crie duas novas colunas com os valores: coluna 4:{27, 48, 23}, coluna 5:{12, 3, 9};
a <- cbind(a,
           c(27, 48, 23),
           c(12,  3,  9))

# g) substitua a terceira coluna de A pela soma da segunda e terceira colunas;
a[,3] = a[,2] + a[,3]