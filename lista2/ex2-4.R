# 2.4 - No site do Sistema de Inoformações Contábeis e Fiscais(Siconfi) 
# é possível baixar diversos conjuntos de dados contábeis e fiscais de
# estados e municípios. O arquivo finbraRREO_MUN_Receitarealizadatotal(ultimos12meses).zip, 
# obtido no site em referência, contém um arquivo .csv com informações relativas ao
# Anexo 03-Demonstrativo da Receita Corrente Líquida para o primeiro bimestre de 2015.

# Importe o conteúdo do arquivo. Quantos registros tem o conjunto de dados?

setwd("~/Documents/github/pos-ds-ile-exercicios-r/lista2/")
file <- "./data/finbraRREO.csv"
ds <- read.csv(file, fileEncoding="latin1", header=T, sep=";", skip=5)
length(ds[[1]])