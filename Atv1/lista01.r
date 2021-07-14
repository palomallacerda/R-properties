

lista <- c(48, 58, 56, 63, 52, 50, 59, 51, 59, 38, 57, 56, 73, 61, 41, 55, 49, 61, 49, 49, 52, 55, 60, 52, 54,  
           57, 47, 66, 60, 53, 59, 50, 45, 57, 64, 56, 57, 60, 47, 58, 53, 58, 66, 47, 40)


#Questão 01
coresbasicas = c(10:14)
hist(lista, main="Frequência absoluta", col = 12, ylim = c(0,20))

#Questão 02

media<- mean(lista) 
############################
moderesult <-function(y){
   y_unico <- unique(y)
   y_unico[which.max(tabulate(match(y, y_unico)))]
}

moda<- moderesult(lista)
moda
############################
mediana <- median(lista)
############################
third <- quantile(lista) #da todos os quartis
third

###########################

boxplot(lista, col = 7) #existe uma maior concentração de dados no 3 quartil 



summary(lista)
