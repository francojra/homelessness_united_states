
# Falta de Moradia nos Estados Unidos -----------------------------------------------------------------------------------------------------------------
# Autora: Jeanne Franco --------------------------------------------------------------------------------------------------------------------
# Data: 26/12/21 ---------------------------------------------------------------------------------------------------------------------------

# Sobre o conjunto de dados ----------------------------------------------------------------------------------------------------------------

# Os dados foram coletados através da contagem de pessoas (point-in-time) que estão dormindo
# em abrigos ou nas ruas. Os dados refletem o número de pessoas sem abrigo em uma determinada
# noite. A fonte dos dados pertence a estimativa do  Department of Housing and Urban Development, 
# que libera o Annual Homeless Assessment Report to Congress (AHARC). 

# O cálculo "point-in-time" é estimado pela contagem de pessoas sem abrigo no final de janeiro
# de cada ano. Os dados são realizados por organizações para solicitar financiamentos do governo.
# Os cuidadores caminham nas ruas usando metodologias pré-estabelecidas e fazem registros de abrigos
# e contagens e estimativas de pessoas abrigadas e desabrigadas.

# Pessoas abrigadas são aquelas que se encontram em abrigos emergenciais, programas habitacionais
# transitórios ou portos seguros. Pessoas desabrigadas, por outro lado, se referem a pessoas que
# se encontram nas ruas, em veículos ou parques privados ou públicos.

# Carregar dados ---------------------------------------------------------------------------------------------------------------------------

dados <- read.csv2("homeless-per-capita-us.csv", header = T, dec = ".", sep = ",")
View(dados) # Visualização dos dados em nova janela do R

library(tibble) # Pacote para acessar a função glimpse
glimpse(dados) # Função que apresenta o resumo dos dados

# Manipulação dos dados --------------------------------------------------------------------------------------------------------------------

library(dplyr) # Pacote para manipular e apresentar a descrição dos dados

## Renomeando nomes de colunas

d <- dados %>%
  rename(desabrigados = Unsheltered.Homeless..HUD..2016..and.U.S..Census.Bureau..2010..,
         abrigados = Sheltered.Homeless..HUD..2016..and.U.S..Census.Bureau..2010.. ,
         ano = Year)
d

## Selecionando dados para análise

d1 <- d %>%
  select(ano, abrigados, desabrigados)
d1

view(d1) # Visualizar nova tabela de dados
