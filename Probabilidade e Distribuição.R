#Pergunta 01
factorial(5)
#Utilizando a função “factorial”, podemos chegar ao numero de possibilidades de implantação dos servidores, que seria 120.

#Pergunta 02
choose(10,3)
#Utilizando a função “choose” podemos encontrar o numero de possibilidades entre as ações,chegando ao numero de 120 possibilidades diferentes

#Pergunta 03
choose(5,2)
#Através da função “choose”, chegamos ao numero de possibilidades de implantação de servidores, chegando ao valor de 10 possibilidades.

#Pergunta 04
n_servidores = 4
n_tarefas = 6
permutacoes <- factorial(n_servidores + n_tarefas - 1) / (factorial(n_servidores - 1) * factorial(n_tarefas))
permutacoes
#Utilizando a função “factorial” podemos chegar ao numero de permutações possíveis para a alocação de tarefas em servidores. Chegando assim ao valor de 84 diferentes permutações

#Pergunta 05
choose(6,3)
#Dentro do numero de desenvolvedores por equipe, o numero de possibilidades de desenvolvedores alocados para o desenvolvimento do projeto são 20

#Case 1
n = 50
p = 0.75
prob_32 = dbinom(32, size = n, prob = p)
prob_32

prob_45_tot = pbinom(45, size = n, prob = p)
prob_45_tot

media_sucesso = n * p
media_sucesso

necessario_90_perc = qbinom(0.9, size = n, prob = p)
necessario_90_perc

#Case 2
set.seed(50)
dados_temperatura = rnorm(144,mean = 40, sd = 5)

probabilidade_acima_45 = 1 - pnorm(45, mean = 40, sd = 5)
probabilidade_acima_45

valor_critico = qnorm(0.9, mean = 40, sd = 5)
valor_critico

hist(dados_temperatura, breaks = 20, prob = TRUE, main = "Distribuição de Temperatura da placa-mãe", xlab = "Temperatura (°C)")
x <- seq(20,60,length = 100)
densidade_probabilidade <- dnorm(x,mean = 40, sd = 5)
lines(x, densidade_probabilidade, col = "blue",lwd = 2)

#A probabilidade de que a temperatura da placa mãe fique acima dos 45°, calculada utilizando a função “pnorm” é de 15,86%

#O valor crítico, que é também o valor que 10% da amostra esta acima é de 46,4°C
