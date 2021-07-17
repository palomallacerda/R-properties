
############## Base de dados ################
pacientes <- read.csv("/home/palomalacerda/Documentos/R/Atv1/dadosPacientes2021.csv - dadosPacientes2021.csv.csv", header = TRUE)

mcz <- pacientes[pacientes$municipio_residencia=="Maceió",]

mcz_domiciliar <- mcz[mcz$situacao_atual=="Isolamento Domiciliar",]
mcz_sexo <- mcz_domiciliar[mcz_domiciliar$sexo,]

"Masculino"->mcz_domiciliar$sexo[mcz_sexo$sexo=="Masculino"] 

sexo <- table(mcz_domiciliar$sexo)
sexo
sex.dom<-sexo[c(-2)]

str(sex.dom)

pie(sex.dom, main = "Público em Isolamento", col=c("Red","DarkBlue"),
    radius = 0.9, clockwise = TRUE, lty = NULL, border = 8)

#############################################################
############## Base de dados ###############################


mcz_obito <- mcz[mcz$situacao_atual== "Óbito",]

mcz_sexo <- mcz_obito[mcz_obito$sexo,]

"Masculino"->mcz_obito$sexo[mcz_sexo$sexo=="Masculino"] 

mcz.tb <- table(mcz_obito$sexo)

sex.dom<-mcz.tb[c(-2)]

pie(sex.dom, main = "Número de Óbitos", col=c("Red","DarkBlue"),
    radius = 0.9, clockwise = TRUE, lty = NULL, border = 8)




