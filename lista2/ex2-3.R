# 2.3 - Utilizando o pacote sqldf e o conjunto de dados ESCOLAS.CSV 
# importe os registros relativos às escolas do município do Rio de Janeiro.

# Para fazer esta seleção as variáveis FK_COD_MUNICIPIO e ID_DEPENDENCIA_ADM devem ser,
# respectivamente, iguais á 3304557 e 3.

setwd("~/Documents/github/pos-ds-ile-exercicios-r/lista2/")

file <- "./data/ESCOLAS.CSV"

escolas <- read.csv(file, fileEncoding="latin1", header=TRUE, sep="|", skipNul = TRUE)
ix <- which(escolas['FK_COD_MUNICIPIO'] == 3304557 & escolas['ID_DEPENDENCIA_ADM'] == 3)
escolas_rio <- escolas[ix,]


install.packages("sqldf")
library(sqldf)
sql_comm <- "select * from file where FK_COD_MUNICIPIO = 3304557 and ID_DEPENDENCIA_ADM = 3"
escolas_rio_sql <- read.csv.sql(file, sql=sql_comm, header=T, sep="|")