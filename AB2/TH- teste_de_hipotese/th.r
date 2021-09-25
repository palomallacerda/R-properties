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



### Teste de hipóteses para duas variancias #######
h0 = "Iguais"
h1 = "Diferentes"
Var_1 <- c(54.07,45.92,44.10,39.36,38.46,40.20,40.93,45.24)
var_2 <- c(40.42,32.64,45.67,41.62,45.08,34.73,32.58,38.96)
var.test(Var_1,var_2) #verificar o p-valor e se é diferente que o nível de confiança


### TH para duas médias a direita (Unilateral) ###
valor_1= c(300, 280, 344,385, 372, 360, 288, 321, 376, 290, 301, 283)
valor_2 = c( 274, 220, 308, 336, 198, 300, 315, 258, 318, 310, 332, 263)

# é preciso informar que os dados são pareados, logo paired = TRUE

t.test(valor_1, valor_2, mu = 0, paired = F, conf.level = 0.98)# observar o valor t, p-value.


t_obs = 1.4; p_value = 0.08

### TH para duas médias a esquerda (unilateral)###

valor_1= c(89,84,96,82,74,92,85,91)
valor_2 = c(83,83,92,84,76,91,80,91)

alfa = 0.1
n = length(valor_1)

valor_critico <- qt(1-alfa/2, n-1)
valor_critico

t.test(valor_1, valor_2, mu = 0, paired = T, conf.level = 0.90, 
       alternative= "greater")
diferenca = c(Amostra_1-Amostra_2)

### Teste de hipótese para duas médias (bilateral)#####
#Amostras pareadas
h0 = "Não há Diferença"
h1= "Há diferença"

Amostra_1 <-c(68.5, 74.0, 67.2, 69.9,68.0)
Amostra_2 <-c(76.3, 75.3, 74.0, 71.2, 74.5)
Amostra_3 <-c(70.6, 75.2, 70.8, 74.7, 72.9)
Amostra_4 <- c(75.4,69.9,72.6,67.5,70.4)

t_obs = sd(diferenca) #tobservado
t_obs

t.test(Amostra_1, Amostra_2, Amostra_3, Amostra_4, mu= 0, paired = F, conf.level = 0.95)
t_calculado = -2.9104


# Quando variancia é desconhecida e amostras independentes

Amostra_1 <- c(54.07, 45.92, 44.10, 39.36, 38.46, 40.20, 40.93, 45.24)
Amostra_2 <- c(40.42, 32.64, 45.67, 41.62, 45.08, 34.73, 32.58, 38.96)

desvio1 = sd(Amostra_1); desvio2 = sd(Amostra_2); media1 = mean(Amostra_1); media2 = mean(Amostra_2);
var1 = des1 * ds1 #output: 
var2 = ds2 * ds2 #output: 

# utilizando a tabela F, com significância alfa/2 = 0.025, temos F(2.5%, 7, 7) = 4,99.

Fcalc = var2 / var1 #output: 1.051

# como Fcalc está dentro do intervalo RNC de -4,99 a 4,99, aceitamos h0 e rejeitamos h1.


# Exemplo 2: repetição do exemplo 1 porém utilizando a função var.test.

var.test(y, x)
#o output retorna um valor F correspondente ao Fcalc = 1.051.
# Temos a mesma conclusão, Fcalc < Falfa.




