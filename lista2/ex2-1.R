# 2.1 - No portal da transparência do governo federal na seção denominada 
# Download de dados é possível baixar diversos conjuntos de dados disponíveis no portal.
# Dentre estes dados consta o CADASTRO NACIONAL DE EMPRESAS INIDÔNEAS E SUSPENSAS (CEIS),
# que é um arquivo contendo a relação das empresas que foram declaradas inidôneas ou 
# foram suspensas de contratar com a administração pública.

# Importe o conjunto de dados contido no arquivo 20160306_CEIS.zip 
# e informe quantos registros tem a base de dados.

setwd("~/Documents/github/pos-ds-ile-exercicios-r/lista2/")

ceis <- read.csv(
  "./data/20160306_CEIS.csv",
  fileEncoding="latin1", header=TRUE, sep="\t", skipNul = TRUE)

nrow(ceis)
