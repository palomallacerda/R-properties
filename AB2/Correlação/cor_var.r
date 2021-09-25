
x <- c(14,18,40,41,50,60)
y <- c(28,30,45,50,56,62)
n <- length(x);
alfa = 0.05

#indice de correlação
r <- cor(x,y)
r 
t_crit <- (r*sqrt(n-2)/sqrt(1-r^2))
t_crit 

t_tabela = qt(1 - alfa,n - 2)
t_tabela

#Correlacao 
cor.test(x,y, method = "pearson")

#Equacao da regressao linear
regressao <- lm(x~y)
summary(regressao)

regressao

plot(x,y, main = "Reta")
abline(regressao,color="red")

