#### teste de hipotese############
### Variancia conhecida ####

variancia = 36
desvio = sqrt(variancia)

h0 = 45
h1 != 45
amostra = 20
media_p = 45
media_a = 43
alfa = 0.1


#### Encontrando t_student / z ##########

## encotnrando o ponto critico ###
zcalc = (media_a-media_p)/(desvio/sqrt(amostra))
zcalc =round(t,2)
zcalc

# encontrando o z do intervalo ##
alfa = alfa/2
alfa
z_alfa = qnorm(alfa)
z_alfa  # -z_alfa <= intervalo <= z_alfa



# Variancia Desconhecida ##
h0 = 127
h1 != 127

amostra <- c(125, 125,125,124,123,122,123,123,123,123,124,124)
desvio = sd(amostra)
desvio
media = mean(amostra)
media
n_conf = 0.05

t_calc <- (media - h0)/(desvio/sqrt(length(amostra)))
t_calc

t_student = qt(1-alfa/2, length(amostra)-1)
t_student = round(t_student, 3)
t_student


#### Unilateral ############ 

amostra = 15 
media_a = 550
media_p = 510
desvio = 25
alfa = 0.05

#a direita

RC = qnorm(alfa)
RC

z_calc = (media_a-media_p)/(desvio/sqrt(amostra))
z_calc = round(z_calc,2)
z_calc

# Como Zcalc > rc, Zcalc está fora do intervalo RNC, então rejeita-se h0, ou seja,
# o fabricante pode concluir que a resistência média de suas lajotas aumentou.


t.test(amostra, conf = alfa, mu = media_a, alternative = "greater")

#a esquerda
t.test(amostra, conf = alfa, mu = media_a, alternative = "less")



### Teste de hipótese para duas médias #####

h0 = Amostra_1-Amostra_2 = 0
h1 = Amostra_1-Amostra_2 != 0

Amostra_1 <-c(32, 27, 38, 35, 33, 29, 25, 19, 31, 24)
Amostra_2 <- c(26, 21, 20, 37, 30, 18, 19, 25, 32, 34)
diferenca = c(Amostra_1-Amostra_2)
n <- 15 #15 alunos
alfa = 0.05

valor_critico <- qt(1-alfa/2, n-1)
valor_critico

t.test(Amostra_1, Amostra_2, mu= 0, paired = T, conf.level = 0.95)
t_calculado = 1.938


