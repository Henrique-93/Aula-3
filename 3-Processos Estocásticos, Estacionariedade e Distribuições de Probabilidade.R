          #3-Processos Estoc�sticos, Estacionariedade e Distribui��es de Probabilidade

rm(list = ls())          #Removendo todos objetos do ambiente
getwd()                  #Verificando o diret�rio atual
setwd("c:/Econometria")  # Aleterando o diret�rio caso seja necess�rio, para ("c:/EconometriaA") ou "c:/Econometria")
library("readr") 
library(pwt8)
data("pwt8.0")
br <- subset(pwt8.0, country=="Brazil",select = c("rgdpna","avh","xr"))
colnames(br) <- c("PIB","Trabalho","C�mbio")
br <- read.csv("C:/Users/Comercial - 1/Desktop/Econometria/3-Processos_Estocasticos_e_Estacionariedade-master/br.csv")  #L� o arquivo br.csv de acordo com o caminho especificado
plot(br$PIB)
plot(br$PIB, type = "1")
dados <- ts(br,start = 1950,frequency = 1)
plot(dados, col="blue", main="Dados Brasileiros", xlab="Ano", plot.type = "single")
write.csv(br,file = "br.csv")
rm(list = ls())
