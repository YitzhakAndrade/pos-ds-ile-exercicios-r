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

