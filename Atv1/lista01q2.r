############# 2 questão ####################
covid <- read.csv("~/R-properies/Atv1/dadosPacientes2021.csv", header = TRUE)
covidtab <- data.frame(covid)

str(covidtab)

############## A ###############
dev.off() 
atual <- data.frame(covid$situacao_atual)
atual01 <- table(atual)
#Aumentando a Margem 
par(mar= c(6,13,4,8))
cor <- colorRampPalette(c("lightblue","Darkblue")) 
barplot(sort(atual01), main= "Situação atual dos pacientes",
        col = cor(8), 
        names = c("Óbito por\nOutras Causas","Internação UTI", "Alta Médica","Internação Leito Clinico", 
                  "Óbito", "Alta Hospitalar", "Encerramento do\nIsolamento Domiciliar", "Isolamento Domiciliar"),
        las = 1,
        cex.axis = 0.8,
        xlim = c(0,160000),
        xlab = "Quantidade de pessoas",
        space = 0.3,
        font.axis= 3,
        horiz = TRUE,
        font.lab= 1,)

help("for")
str(atual)

## legend("bottomright", legend = c("Óbito por outras Causas", "Internação UTI","Alta médica", "Internação leito Clinico", 
#"Óbito", "Alta Hospitalar", "Encerramento do Isolamento Domiciliar", "Isolamento Domiciliar"),
# col = cor(8), 
# bty = "n", pch=15, pt.cex = 2, cex = 0.8, horiz = FALSE, inset = c(0.05, 0.05))##

############### Número de óbitos por município #################

obitos_geral <- covid[covid$situacao_atual=="Óbito",]
relacao <- data.frame(c(obitos_geral$municipio_residencia, obitos_geral$situacao_atual))
relacao
table <- table(relacao)

cor1 <- colorRampPalette(c("pink","Darkred")) 

par(mar= c(10,4,4,1))
barplot(sort(table), main= "Número de Óbitos por município",
        ylim = c(0,5000), cex.axis = 0.8, ylab = "Quantidade de óbitos",
        space = 0.3, col = cor1(5),las=2,
        font.lab = 3, font.axis= 6, cex.names = 0.8)

################ Numero de óbitoS por sexo e idade ####################
obitos_geral <- covid[covid$situacao_atual=="Óbito",]
sexo_table <- table(obitos_geral$sexo)
sexo_table <- sexo_table[-c(2)]

obitos_geral <- obitos_geral[obitos_geral$idade>=0,]
"Masculino"->obitos_geral$sexo[obitos_geral$sexo=="Mascuino"]

obitos_geral$idade <- cut(obitos_geral$idade, seq(0, 110, by=10))

cor <- colorRampPalette(c("Red", "blue")) 

barplot(table(obitos_geral$sexo, obitos_geral$idade),  
         col = cor(2), cex.axis = 0.8, main = "Número de óbitos por sexo e idade",
        xlab = "Idade", ylab = "Número de óbitos")

legend("topleft", legend = c("Feminino","Masculino"),
       col = cor(2), 
       bty = "n", pch=15, pt.cex = 2, cex = 0.8, horiz = FALSE, inset = c(0.05, 0.05))

############# número de obitos por idade #####################

par(mar= c(10,6,6,1))
hist(obitos_geral$idade[obitos_geral$idade >=0], main = "Histograma de óbito por idade", 
     xlab = "Idade", ylab = "Frequência")

############# número de obitos por mês #####################
data <- data.frame("Data Obito"=obitos_geral$data_resultado_exame, obitos_geral$situacao_atual=="Óbito")
data.tb<- as.Date(data$Data.Obito)
data.mes <- table(months(data.tb))

cor.tipo <- colorRampPalette(c("red","Yellow", "green")) 
barplot(rev(sort(data.mes)), main = "Número de óbitos por mês",
        ylim= c(0,1400), las=2, ylab = "Quantidade",
        col = cor.tipo(12),cex.axis = 1)




















