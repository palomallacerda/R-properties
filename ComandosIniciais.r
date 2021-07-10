# Atribuindo um objeto
x <- c(400, 5 , 6)
x1 <- c(10L, 80L, 400L)
y <- "Programando pq preciso"

summary(x)
# Comando de ajuda
help(plot)
ls()


# Obtendo o tamanho em Bytes do objeto
object.size(x1)
object.size(x)
object.size(y)

# Gera numeros aleatórios
runif(2)
runif(15L, min = 5, max = 30)


# Criando funções
funcao <- function(texto)
{
  writeLines(texto)
}  
funcao("Estudando oq não devo")
funcao(y)

# Criando um vetor de caracteres

vetor1 <- c("Maria", "Lucas", "Ana", "Souza")
funcao(vetor1)

length(vetor1)


# Descobrindo qual o tipo de dado
class(vetor1)
class(x)
class(y)

#criando um vertor com um intervalo em uma sequencia
sequencial <- c(seq(0,100))
sequencial
length(sequencial)

metade <- sequencial/2
metade
class(metade)
class(sequencial)
object.size(metade)
object.size(sequencial)


