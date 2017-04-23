# 2.2 - O Tribunal de Contas da União vem colhendo informações junto a seus 
# jurisdicionados visando obter um perfil da Governança de TI dos mesmos. 
# Os dados relativos ao ciclo de 2014 estão disponíveis no endereço eletrônico 
# http://dados.gov.br/dataset/dados-coletados-no-perfil-de-governanca-de-ti.

# Importe o conjunto de dados DadosColetados_PerfilGovTI 2014.xlsx e diga 
# quantos registros tem a base de dados.

setwd("~/Documents/github/pos-ds-ile-exercicios-r/lista2/")

install.packages("gdata")
library(gdata)

gov <- read.xls(
  "./data/DadosColetados_PerfilGovTI 2014.xlsx",
  fileEncoding="latin1", header=T, sep=",", skipNul=T, skip=2)

nrow(gov)
