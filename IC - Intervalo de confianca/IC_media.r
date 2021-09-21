###calculo de intervalo de confian�a MEdia ###

### Com vari�ncia conhecida ###

#Caso necessario
variancia = 14
desvio = sqrt(variancia)
########################

alfa = 0.10 # o oposto do intervalo de confian�a##
media = 9
n = 120
desvio = 15
#### encontrando o z ###
z = qnorm(1-alfa/2,0,1)
z = round(z,2)
z

#### encontrando o erro padr�o #####
erro = z*desvio/sqrt(n)
erro = round(erro,2)
erro

inferior = media-erro
superior = media+erro

cat ("[", round(inferior,2),"<=", "intervalo", "<=", round(superior,2), "]")

##########################################################
### Com vari�ncia desconhecida ###

# para <30 --> Usa o t student

amostra <- c(80, 75, 71, 82, 77, 64, 78, 67, 81, 79)

alfa = 0.02
n = length(amostra)

desvio = sd(amostra)
mean = mean(amostra)

#Calculando t_student 
t_student = qt(1-alfa/2, n-1)
t_student = round(t_student, 2)
t_student

error =  t_student*desvio/sqrt(n)
error = round(error,2)

sup = mean+error
inf = mean-error

cat ("[", round(inf,2),"<=", "intervalo", "<=", round(sup,2), "]")

####################################################################

var <- function(amostra){
    final <- sum((amostra - mean(amostra))^2)/(length(amostra)-1)
  return (round(final,2))
}

#exemplo 2

S <- c(10.49,16.62,17.30,15.48,12.97,17.26,13.40,13.90,13.63,13.26,14.37,
             11.70, 15.47, 17.84, 14.07, 14.76)
S

alfa = 0.01
media = mean(S)
n = length(S)
variancia = var(S)
desvio = sqrt(variancia)
desvio

#qualquer um dos dois serve para achar a variancia e desvio padr�o
des = sd(S)
variancia = des*2

#Calculando t_student 
t_student = qt(1-alfa/2, n-1)
t_student = round(t_student, 3)
t_student

error =  t_student*des/sqrt(n)
error = round(error,3)
error

sup = media+error
inf = media-error

cat ("[", round(inf,3),"<=", "intervalo", "<=", round(sup,3), "]")


