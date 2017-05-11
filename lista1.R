# Exercício 1

# 1.1 - Crie um vetor chamado vec contendo os elementos {26, NA, 72, 45, 12, 16, NA, 88}
vec <- c(26, NA, 72, 45, 12, 16, NA, 88)

# a) Obtenha um novo vetor (vec1) contendo o primeiro e o último elementos do vetor vec;
vec1 <- c(head(vec,1), tail(vec,1))

# b) Insira entre os elementos 72 e 45 do vetor vec os elementos {24, 13, 42}
vec2 <- append(vec, c(24,13,42), 3)

# c) Obtenha o produto dos elementos do vetor vec;
prod(vec, na.rm = TRUE)

# d) Obtenha os valores que não sejam NA;
vec3 <- vec[!is.na(vec)]

# e) Obtenha os valores maiores que a média dos elementos do vetor vec.
vec3[vec3 > mean(vec3)]

# f) Obtenha um vetor contendo os valores que imediatamente antecedem e sucedem a cada NA.
vec[sort(c(which(is.na(vec))+1, which(is.na(vec))-1))]

# g) Dados os vetores a <- c(14, 27, 45, 72, 19, -12) e b <- c(6, 9, 8, NA, 7, 5),
# calcule a + b + 5;
a <- c(14, 27, 45, 72, 19, -12)
b <- c(6, 9, 8, NA, 7, 5)
sum(a, b, na.rm = TRUE)

# h) Crie um vetor num_pares contendo os números inteiros pares menores que 100;
num_pares <- c(1:99)

# i) Exclua deste vetor os valores maiores que 60 e menores que 80;
num_pares <- num_pares[which(num_pares > 60 & num_pares < 80)]

# j) Encontre a variância dos valores remanescentes.
var(num_pares)




# Exercício 2

# 1.2 - O volume de um cone de raio R e altura H é dado por 
# 1/3 × pi × R^2 × H. 
# Tendo obtido o raio e a altura de seis cones, apresentados a seguir, 
# calcule o volume de cada um deles.
# R = {2.27, 1.98, 1.69, 1.88, 1.64, 2.14}
# H = {8.28, 8.04, 9.06, 8.70, 7.58, 8.34}

r = c(2.27, 1.98, 1.69, 1.88, 1.64, 2.14)
h = c(8.28, 8.04, 9.06, 8.70, 7.58, 8.34)
v = (1/3 * pi * (r**2) * h)
v

cone_volume <- function (r, h) {
  return (1/3 * pi * (r**2) * h)
}
cone_volume(r, h)


# Exercício 3

# 1.3 - Calcule o que se pede:
# a) 3 + 9/5
3 + 9/5

# b) (564^4) + 29/5
564^4 + 29/5

# c) √76
sqrt(76)

# d) ln 12345

# e) log2 12345
log(12345)

# f) log10 12345
log10(12345)

# g) combinatório de seis, dois a dois (Dica: existe uma função que calcula isso).
# http://mundoeducacao.bol.uol.com.br/matematica/analise-combinatoria.htm
# 15 elementos => 12, 13, 14, 15, 16, 23, 24, 25, 26, 34, 35, 36, 45, 46, 56
choose(6,2)

# h) |18 − 50|
abs(18-50)

# i) sin(pi), cos(pi),tan(pi)
c(sin(pi), cos(pi), tan(pi))

# j) Arredonde o valor de pi para 4 casas decimais;
round(pi, 4)


# Exercício 4

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


# Exercício 5

# 1.5 - Considere o dataframe definido a seguir:
df <- data.frame(
  nome = c('Marcos', 'João', 'José', NA, 'Maria', 'Helena', 'Jordana'),
  idade = c(44, 26, NA, 29, 41, 55, 72))
  
# a) Obtenha as linhas para as quais existam NA. 
# Dica: a função complete.cases() pode ser útil;
which(!complete.cases(df))
df[which(!complete.cases(df)), ]

# b) Obtenha a soma dos valores da coluna idade;
sum(df[, 'idade'], na.rm=TRUE)

# c) Selecione a linha contendo o nome da pessoa de menor idade;
min(df[, 'idade'], na.rm=TRUE)

# d) Obtenha as linhas para as quais não existam NA;
which(complete.cases(df))
df[which(complete.cases(df)), ]

# e) Calcule as dimensões de df['idade'] e df[['idade']]. Use a função dim();
dim(df['idade'])
dim(df[['idade']]) # ?? não entendi

# f) Obtenha os nomes das variáveis do data frame df;
variable.names(df)

# g) Adicione ao data frame os seguintes valores {Felipe, 36}, {Carla, 49} e {Rosane, 18};
df_add = data.frame(
  nome = c('Felipe', 'Carla', 'Rosane'),
  idade = c(36, 49, 18))

df = rbind(df, df_add)

# h) Obtenha os números das linhas para as quais existam NA;
which(is.na(df), arr.ind=TRUE)
df[sort(t(which(is.na(df), arr.ind=TRUE)[,1])),]
which(is.na(df)) %% length(df[,1])
df[sort(which(is.na(df)) %% length(df[,1])),]


# Exercício 6

# 1.6 - Considere que você possua dados sobre o peso (em kg) e altura (em cm) 
# de um conjunto de pessoas, conforme mostrado na tabela abaixo.

# Nome		Altura  Peso
# Pedro	  180     87
# José    165     58
# Maria   160     65
# Sandra	193     100

# Calcule o índice de massa corporal das 4 pessoas e identifique qual delas 
# está com o IMC maior que 25.

# Obs. O Indíce de Massa Corporal (IMC) é dado por:
# IMC = peso(kg) / [altura(m)]^2

df <- data.frame(
  nome = c('Pedro', 'José', 'Maria', 'Sandra'),
  altura = c(180, 165, 160, 193),
  peso = c(87, 58, 65, 100))

imc <- function(peso, altura) {
  altura <- ifelse(altura > 3, altura / 100, altura)
  return (peso / altura^2)
}

# calcula direto, mas não mostra o imc
fat <- which(imc(df[, 'peso'], df[, 'altura']) > 25)
df[fat,]

# insere o imc no dataframe e faz a condição usando a nova coluna
df_imc <- cbind(df, imc = imc(df[, 'peso'], df[, 'altura']))
df_imc[which(df_imc[,'imc'] > 25),]


# Exercício 7

# 1.7 - Experimente o comando which.min(c(3,5,1,7,8)).
# Explique o valor retornado pela função.

which.min(c(3,5,1,7,8))

# retornou o índice do menor valor do vetor


# Exercício 8

# 1.8 - Considere a lista x.lis definida da seguinte forma: 
x.lis <- list(a=1:10, b=letters[1:3], c=matrix(1:10,ncol=2))

# a) Obtenha a soma acumulada dos elementos da primeira componente;
cumsum(x.lis['a'][[1]])

# b) Obtenha a segunda componente;
x.lis['b']

# c) Obtenha os nomes das componentes da lista;
names(x.lis)

# d) Adicione o vetor vec criado anteriormente à lista;
# vetor vec do exercício 1.1
vec <- c(26, NA, 72, 45, 12, 16, NA, 88)
x.lis <- c(x.lis, d=list(vec))
