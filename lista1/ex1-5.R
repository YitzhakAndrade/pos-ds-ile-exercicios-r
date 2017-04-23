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