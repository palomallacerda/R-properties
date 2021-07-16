############# 2 questão ####################
covid <- read.csv("/home/palomalacerda/Documentos/R/Atv1/dadosPacientes2021.csv - dadosPacientes2021.csv.csv", header = TRUE)
covidtab <- data.frame(covid)

str(covidtab)

############## A ###############
atual <- data.frame(covid$situacao_atual)
str(atual)
length(atual)
class(atual)
atual01 <- table(atual)

atual01

#Aumentando a Margem 
cor <- colorRampPalette(c("lightblue","Darkblue")) 
par(mar= c(6,4,4,2))
barplot(sort(atual01), main= "Situação atual dos pacientes",
        col = cor(8), 
        names.arg = c("O","UTI", "AM","ILC", "O", "AH", "EID", "ID"),
        las = 1,
        cex.axis = 0.8,
        ylim = c(0,160000),
        ylab = "Quantidade de pessoas",
        space = 0.3,
        font.axis= 3,
        font.lab= 1)

legend("topleft", legend = c("Óbito por outras Causas", "Internação UTI","Alta médica", "Internação leito Clinico", 
                             "Óbito", "Alta Hospitalar", "Encerramento do Isolamento Domiciliar", "Isolamento Domiciliar"),
       col = cor(8), 
       bty = "n", pch=15, pt.cex = 2, cex = 0.8, horiz = FALSE, inset = c(0.05, 0.05))

help("for")
str(atual)


################################
obtos_geral <- covid[covid$situacao_atual=="Óbito",]
relacao <- data.frame(c(obtos_geral$municipio_residencia, obtos_geral$situacao_atual))
relacao
table <- table(relacao)

cor1 <- colorRampPalette(c("pink","Darkred")) 

par(mar= c(10,4,4,1))
barplot(sort(table), main= "Número de Óbitos por município",
        ylim = c(0,5000), cex.axis = 0.8, ylab = "Quantidade de óbitos",
        space = 0.3, col = cor1(5),las=2,
        font.lab = 3, font.axis= 6, cex.names = 0.8)

################numero de obito por sexo e idade ####################
sexo_idade <- data.frame("idade"=obtos_geral$idade, "sexo" = obtos_geral$sexo)

str(sexo_idade)

idade.tab<-table(sexo_idade$idade)
idade.tab
boxplot(idade.tab)


############# número de obtos por idade #####################
idade.tab<-table(sexo_idade$idade)
idade.tab
hist(idade.tab,  
     main = "Óbitos por idade", 
     xlab = "Idade", ylab = "Freq. Absoluta", 
     col = c("violet"), 
     border = FALSE, 
     xlim = c(0,165), ylim = c(0,60),
     )


