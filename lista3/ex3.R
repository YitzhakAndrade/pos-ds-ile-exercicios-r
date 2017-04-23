# 3.1 - Coloque o conjunto de dados mtcars na área de trabalho;
mtcars <- mtcars

# 3.2 - Obter os nomes das variáiveis do conjunto de dados;
names(mtcars)

# 3.3 - Obter a quantidade de linhas e colunas do conjunto de dados;
c(rows=nrow(mtcars), cols=ncol(mtcars))

# 3.4 - Calcule a média da variável mpg;
mean(mtcars$mpg)

# 3.5 - Obtenha os valores máximo e mínimo da variável disp;
c(max=max(mtcars$disp), min=min(mtcars$disp))

# 3.6 - Calcule a correlação entre as variáveis mpg e wt;
cor(mtcars$mpg, mtcars$wt)

# 3.7 - Obtenha os registros para os quais a variável 
# mpg é maior que 20 e hp é maior que 90;
mtcars[which(mtcars$mpg > 20 & mtcars$hp > 90),]

# 3.8 - Substitua o nome da variável carb por qtd_carburadores;
colnames(mtcars)[which(colnames(mtcars) == 'carb')] <- 'qtd_carburadores'

# 3.9 - Remova a variável qsec do cojunto de dados;
mtcars$qsec = NULL

# 3.10 - Obtenha um novo data frame contendo apenas as variáveis mpg, wt e cyl;
mtcars2 <- mtcars[,c('mpg', 'wt', 'cyl')]

# 3.11 - No data frame obtido na questão anterior reordene as colunas de forma 
# que as variáveis apareçam na seguinte ordem: cyl, mpg, wt;
mtcars2[,c('cyl', 'mpg', 'wt')]

# 3.12 - Obenha os nomes das linhas do conjunto de dados;
rownames(mtcars)

# 3.13 - Qual o valor da variável hp na linha 15 da base de dados?;
mtcars[15, 'hp']

# 3.14 - Qual a média dos valores da variável mpg quando a variável cyl é 6?;
mean(mtcars[which(mtcars$cyl == 6), 'mpg'])

# 3.15 - Qual é o produto do valor máximo de cyl com o valor mínimo de wt?;
max(mtcars$cyl) * min(mtcars$wt)

# 3.16 - Obtenha as linhas 4, 10 e 19 e as colunas mpg, drat e vs do conjunto de dados;
mtcars[c(4,10,19), c('mpg','drat','vs')]

# 3.17 - Obtenha um vetor que seja a soma da variável cyl com a variável qtd_carburadoes.
# Qual é a soma dos valores deste novo vetor?
sum(mtcars$cyl + mtcars$qtd_carburadores)