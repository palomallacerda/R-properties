### Calculo de Intervalo de Confiança Proporção #######

alfa = 0.08
n = 500
p = 157/500

p
#Calculando z
z = qnorm(1-alfa/2,0,1)
z = round(z,2)
z

#Calculando o ERRO
erro = z*sqrt(p*(1-p)/n)
erro <- round(erro,2)
erro
inf = p-erro
sup = p+erro
cat ("[", round(inf,2), "<=", "Intevalo", "<=", round(sup,2), "]", "=", 100-(100*alfa),"%")


## Para encontrar o tamanho da amostra

erro = 0.05
p = 0.5
alfa = 0.1

z = qnorm(1-alfa/2,0,1)
z = round(z,2)
z

n = ((z*sqrt(p*(1-p)))/erro)^2
n
