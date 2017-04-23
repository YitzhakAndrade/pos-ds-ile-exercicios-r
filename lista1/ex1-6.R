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