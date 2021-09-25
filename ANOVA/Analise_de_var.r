#### Primeiro voc� le� a tabela #########

#AOV l� primeiro os valores dps os labels ###
Amostra <- data.frame(KM = c(85,75,82,76,71,85,
                             71,75,73,74,69,82,
                              59,64,62,69,76,67), 
                       setores = c("Atlanta", "Atlanta", "Atlanta", "Atlanta","Atlanta","Atlanta", 
                                   "Dallas", "Dallas","Dallas", "Dallas", "Dallas", "Dallas", 
                                   "Seatle","Seatle","Seatle","Seatle","Seatle","Seatle"))

result <- aov(Amostra$KM ~ factor(Amostra$setores))

#Mostra se existe diferen�a/ Caso  muito baixo n�o existir� diferen�a####
anova(result)

# Para saber quem difere de quem #####
## Para os valores de p<alfa as amostras diferem
## Para p > alfa as amostras n�o diferem
TukeyHSD(result)

