# Dataframe chamado 'dados'
dados <- data.frame(base.r.wege.full)

# Convertendo a coluna 'Date' para o formato Date
dados$Date <- as.Date(dados$Date, format = "%m/%d/%Y")

# Visualizando a estrutura dos dados
str(dados)

# Resumo estatístico
summary(dados)

# Gráfico do preço de fechamento
plot(dados$Date, dados$Close, type = 'l', col = 'blue',main = "Série temporal do preço de fechamento", xlab = 'Data', ylab = 'Preço de fechamento')

# Dividindo por ano
dados$Year <- format(dados$Date, "%Y")

# Visualizando a distribuição dos dados ao longo dos anos
table(dados$Year)

# Criando um modelo para todo o período
modelo_total <- lm(Close ~ Open + High + Low, data = dados)

# Visualizando o resumo do modelo
summary(modelo_total)

# Avaliando resíduos do modelo total
plot(modelo_total$residuals)

# Comparando modelos para diferentes períodos
# Exemplo para 2009
modelo_2009 <- lm(Close ~ Open + High + Low, data = subset(dados, Year == "2009"))
summary(modelo_2009)

# Ao criar um dataframe chamado dados, ajustei a coluna Date para o formato de data,explorei a estrutura e resumo estatístico dos dados, e gerei um gráfico da série temporal do preço de fechamento.
# Além disso, dividi os dados por ano e criei um modelo linear para todo o período usando as variáveis Open, High, e Low. Também comecei a avaliar os resíduos desse modelo.

#Fiz dois modelos, onde modelo a relação entre a variável de resposta Close e as variáveis preditoras Open, High, e Low. O primeiro modelo (modelo_total) usa todos os dados do conjunto, enquanto o segundo (modelo_2009) é ajustado apenas aos dados do ano de 2009. 
#Esses modelos capturam a relação linear entre as variáveis, assumindo que a variável de resposta (Close) é uma combinação linear das variáveis preditoras.

#Insights
# Identificar tendências ao longo do tempo. Por exemplo, há períodos de aumento e queda pronunciados nos preços.
# Ao examinar os resíduos dos modelos, podemos identificar um padrões e um outliers. 