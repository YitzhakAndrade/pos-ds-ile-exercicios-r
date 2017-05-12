# Exercício 1

# 2.1 - No portal da transparência do governo federal na seção denominada 
# Download de dados é possível baixar diversos conjuntos de dados disponíveis no portal.
# Dentre estes dados consta o CADASTRO NACIONAL DE EMPRESAS INIDÔNEAS E SUSPENSAS (CEIS),
# que é um arquivo contendo a relação das empresas que foram declaradas inidôneas ou 
# foram suspensas de contratar com a administração pública.

# Importe o conjunto de dados contido no arquivo 20160306_CEIS.zip 
# e informe quantos registros tem a base de dados.

setwd("~/Documents/github/pos-ds-ile-exercicios-r/")

ceis <- read.csv(
  "./data/20160306_CEIS.csv",
  fileEncoding="latin1", header=TRUE, sep="\t", skipNul = TRUE)

nrow(ceis)



# Exercício 2

# 2.2 - O Tribunal de Contas da União vem colhendo informações junto a seus 
# jurisdicionados visando obter um perfil da Governança de TI dos mesmos. 
# Os dados relativos ao ciclo de 2014 estão disponíveis no endereço eletrônico 
# http://dados.gov.br/dataset/dados-coletados-no-perfil-de-governanca-de-ti.

# Importe o conjunto de dados DadosColetados_PerfilGovTI 2014.xlsx e diga 
# quantos registros tem a base de dados.

setwd("~/Documents/github/pos-ds-ile-exercicios-r/")

install.packages("gdata")
library(gdata)

gov <- read.xls(
  "./data/DadosColetados_PerfilGovTI 2014.xlsx",
  fileEncoding="latin1", header=T, sep=",", skipNul=T, skip=2)

nrow(gov)



# Exercício 3

# 2.3 - Utilizando o pacote sqldf e o conjunto de dados ESCOLAS.CSV 
# importe os registros relativos às escolas do município do Rio de Janeiro.

# Para fazer esta seleção as variáveis FK_COD_MUNICIPIO e ID_DEPENDENCIA_ADM devem ser,
# respectivamente, iguais á 3304557 e 3.

setwd("~/Documents/github/pos-ds-ile-exercicios-r/")

file <- "./data/ESCOLAS.CSV"

escolas <- read.csv(file, fileEncoding="latin1", header=TRUE, sep="|", skipNul = TRUE)
ix <- which(escolas['FK_COD_MUNICIPIO'] == 3304557 & escolas['ID_DEPENDENCIA_ADM'] == 3)
escolas_rio <- escolas[ix,]


install.packages("sqldf")
library(sqldf)
sql_comm <- "select * from file where FK_COD_MUNICIPIO = 3304557 and ID_DEPENDENCIA_ADM = 3"
escolas_rio_sql <- read.csv.sql(file, sql=sql_comm, header=T, sep="|")


# Exercício 4

# 2.4 - No site do Sistema de Inoformações Contábeis e Fiscais(Siconfi) 
# é possível baixar diversos conjuntos de dados contábeis e fiscais de
# estados e municípios. O arquivo finbraRREO_MUN_Receitarealizadatotal(ultimos12meses).zip, 
# obtido no site em referência, contém um arquivo .csv com informações relativas ao
# Anexo 03-Demonstrativo da Receita Corrente Líquida para o primeiro bimestre de 2015.

# Importe o conteúdo do arquivo. Quantos registros tem o conjunto de dados?

setwd("~/Documents/github/pos-ds-ile-exercicios-r/")
file <- "./data/finbraRREO.csv"
ds <- read.csv(file, fileEncoding="latin1", header=T, sep=";", skip=5)
length(ds[[1]])


# Exercício 5

# 2.5 - O arquivo SICONFI_DCA_6561_ANUAL_1.xls contém dados contábeis do
# município de Angra dos Reis relativos ao exercício de 2014.
# Utilizando qualquer um dos pacotes para importação de arquivos em excel
# vistos em sala de aula, importe o conteúdo da planilha DCA-Anexo I-G.

setwd("~/Documents/github/pos-ds-ile-exercicios-r/")
dados <- read.xls(
  "./data/SICONFI_DCA_6561_ANUAL_1.xls",
  fileEncoding="latin1", header=T, skipNul=T, skip=15, nrows=167,
  sheet="DCA-Anexo I-G")



# Exercício 6

# 2.6 - O R dispõe dos conjuntos de dados rock e ToothGrowth.
# Exporte estes dados para um arquivo do Excel, de forma que
# cada conjunto de dados fique em uma planilha diferente.

setwd("~/Documents/github/pos-ds-ile-exercicios-r/")
file <- "./data/ex2-6.xlsx"

library('datasets')
install.packages('xlsx')
library('xlsx')
write.xlsx(rock, file, sheetName='rock')
write.xlsx(ToothGrowth, file, sheetName='ToothGrowth', append=T)


# Exercício 7

# 2.7 - Importe os dados contidos no arquivo 14SerieRouboVeiculo2015.xls
# obtido no site do Instituto de Segurança Pública (ISP).
# Ignore a coluna e linha de totalizações.


setwd("~/Documents/github/pos-ds-ile-exercicios-r/")
dados <- read.xls(
  "./data/14SerieRouboVeiculo2015.xls",
  fileEncoding="latin1", header=T, sep=",", skipNul=T, skip=5, nrows=138)
dados <- dados[,2:ncol(dados)]

