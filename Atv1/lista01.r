

lista <- c(48, 58, 56, 63, 52, 50, 59, 51, 59, 38, 57, 56, 73, 61, 41, 55, 49, 61, 49, 49, 52, 55, 60, 52, 54,  
           57, 47, 66, 60, 53, 59, 50, 45, 57, 64, 56, 57, 60, 47, 58, 53, 58, 66, 47, 40)
#Questão 01
hist(lista, main="Histograma", ylab= "Frequência absoluta", 
     xlab = "Valores",col = 12, ylim = c(0,20), xlim = c(25, 85))

length(lista)
#Questão 02
media<- mean(lista) 
media

############################
moderesult <-function(y){
   y_unico <- unique(y)
   y_unico[which.max(tabulate(match(y, y_unico)))]
}

moda<- moderesult(lista)
moda
############################
mediana <- median(lista)
mediana
############################
# Terceiro quartil corresponde a 75% de toda a amostra ordenada 
third <- quantile(lista, c(0.75)) 
third
###########################
#### Encontrando os percentis #########
per1 <- quantile(lista, 0.08)
per2<-quantile(lista, 0.50)
per3 <- quantile(lista, 0.80)
per1
per2
per3

dev.off() 

boxplot(lista, col = 7) #existe uma maior concentração de dados no 3 quartil 

summary(lista)

