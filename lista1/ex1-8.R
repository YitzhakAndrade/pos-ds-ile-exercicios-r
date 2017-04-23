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
