
#Dados
anos <- c(1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000)
fundo <- c(5.27, 43.08, -1.02, 56.94, 56.71, 12.48, 11.61, 27.76, -12.05, 4.74, -5.79, 44.74, 0.76, 14.89, 14.65, 4.12, 16.93, 26.34, -8.60)
eafe <- c(-0.86, 24.61, 7.86, 56.72, 69.94, 24.93, 28.59, 10.80, -23.20, 12.50, -11.85, 32.94, 8.06, 11.55, 6.36, 2.06, 20.33, 27.30, -13.96)

#Criando o diagrama de dispersão
plot(eafe, fundo, main = "Diagrama de Dispersão", xlab = "Rendimentos do EAFE", ylab = "Rendimentos do Fundo")

#Adicionando uma linha de ajuste linear
modelo_linear <- lm(fundo ~ eafe)
abline(modelo_linear, col = "red")
legend("topleft", legend = c("Linha de Regressão"), col = c("red"), lty = 1)

#Calculando a correlação entre as variáveis
correlacao <- cor(eafe, fundo)
print("Correlação entre rendimentos do EAFE e rendimentos do Fundo:")
print(correlacao)

#Gráfico residuals vs fitted para verificar se há algum padrão nos resíduos em relação aos valores ajustados
par(mfrow=c(2,2))
plot(modelo_linear, which = 1:4)