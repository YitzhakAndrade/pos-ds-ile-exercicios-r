# 2.6 - O R dispõe dos conjuntos de dados rock e ToothGrowth.
# Exporte estes dados para um arquivo do Excel, de forma que
# cada conjunto de dados fique em uma planilha diferente.

setwd("~/Documents/github/pos-ds-ile-exercicios-r/lista2/")
file <- "./data/ex2-6.xlsx"

library('datasets')
install.packages('xlsx')
library('xlsx')
write.xlsx(rock, file, sheetName='rock')
write.xlsx(ToothGrowth, file, sheetName='ToothGrowth', append=T)