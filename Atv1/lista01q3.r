
############## Base de dados ################
pacientes <- read.csv("~/R-properies/Atv1/dadosPacientes2021.csv", header = TRUE)

mcz <- pacientes[pacientes$municipio_residencia=="Maceió",]

mcz_domiciliar <- mcz[mcz$situacao_atual=="Isolamento Domiciliar",]
mcz_sexo <- mcz_domiciliar[mcz_domiciliar$sexo,]

"Masculino"->mcz_domiciliar$sexo[mcz_sexo$sexo=="Masculino"] 

sexo <- table(mcz_domiciliar$sexo)
sexo
sex.dom<-sexo[c(-2)]

str(sex.dom)

#############################################################
############## Base de dados ###############################


mcz_obito <- mcz[mcz$situacao_atual== "Óbito",]

mcz_sexo <- mcz_obito[mcz_obito$sexo,]
## Retirando o erro da base de dados ##
"Masculino"->mcz_obito$sexo[mcz_sexo$sexo=="Masculino"] 

mcz.tb <- table(mcz_obito$sexo)

isolamento<-mcz.tb[c(-2)]

#### fazendo a porcentagem ####

name <- c("Feminino", "Masculino")
###### porcentagem do primeiro gráfico ###########
porcent <- round(sex.dom/sum(sex.dom)*100,2)
rotulo <- paste(name,"\n",porcent ,"%", sep =" ")

####### porcentagem do segundo gráfico ##########
porcent2 <- round(isolamento/sum(isolamento)*100,2)
rotulo1 <- paste(name, "\n",porcent2 ,"%", sep ="") 

########### gráficos #############
par(mfrow=c(2,1))
pie(sex.dom, main = "Público em isolamento em Maceió", col=c("Red","DarkBlue"),
    radius = 0.9, clockwise = TRUE, lty = NULL, border = 8, labels = rotulo)

pie(isolamento, main = "Óbitos em Maceió", col=c("Red","DarkBlue"),
    radius = 0.9, clockwise = TRUE, lty = NULL, border = 8, labels= rotulo1)


