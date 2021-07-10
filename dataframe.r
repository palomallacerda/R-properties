nomes <- c("Pedro", "Julia", "Fred", "Ana", "Caio", "Maisa")
idade <- c(20,16,22,25,17,15)

#criando o data frame
df <- data.frame(nomes, idade)

# Atribuindo em um intervalo
desistentes <- data.frame(ano = 2015:2021,
                          desistentes = c(8,4,6,10,4,8,NA))
desistentes
#Para pegar a dimensão 
dim(desistentes)
#quantidade de colunas
length(desistentes)

# Descrição do data frame
str(desistentes)
str(df)

# Atribuindo um nome pra cada elemento de um vetor
x <- c(50,80,46,12,64,78)
names(x) <- c("Belém","Salvador","Vitória","Maceió","Rio","Natal")
x

# Criando Gráfico 
barplot(x, main= "Vacinas aplicadas contra COVID19", col = c("cyan", "blue"))


