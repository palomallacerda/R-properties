
# Pegando uma base de dados já pronta
milsa <- read.table(file="MilsaDatabase.csv", header = TRUE, sep = ";")

milsa <- read.csv("/home/palomalacerda/R/MilsaDatabase.csv", header = TRUE, sep = ";", strip.white = TRUE)
#stripwhite -> vai ignorar separações nas strings

milsa
str(milsa)
length(milsa)

# resumo de dados (média, mediana.....)
summary(milsa$Filhos)
summary(milsa$Salario)

#variancia
var(milsa$Filhos, na.rm = TRUE)

#desvio padrão
sd(milsa$Filhos, na.rm = TRUE)

#Criando um array
x <- array(c(1:10), dim = c(5,5))
x
x1 <- array(c(1:11), dim = c(2,11))
x1

#Criando uma Matriz

matriz <- matrix(c(1:10), nrow = 5, ncol = 5, byrow = 1)
matriz
object.size(matriz)

#correlação
cor(milsa$Anos, milsa$Salario)

str(milsa)
# Atribuindo ao objeto estado civil  a coluna est.civil d Milsa
estadocivil  <- table(milsa$Est.civil)
estadocivil


# Criando um gráfico Barra
barplot(estadocivil, cex.names = 1.1, col = c("Red", "Black"),
        ylab= "Número de funcionarios", xlab = "Estado Civil", 
        main= "Frequencia entre casados e solteiros", cex = 1.1,
        ylim = c(0,25))

