Algoritmo "5179936.alg"
var
   temperaturas: vetor [1..7] de real
   i: inteiro

procedimento CalcularMedia
var
   soma, media: real
   j: inteiro
inicio
   soma <- 0
   para j de 1 ate 7 faca
      soma <- soma + temperaturas[j]
   fimpara

   media <- soma / 7

   escreval("-------------------------------------------")
   escreval("RESULTADO DO PROCESSAMENTO:")
   escreval("Média semanal: ", media:4:1, "°C")

   se (media > 30) entao
      escreval("Status: Alerta de altas temperaturas!")
   senao
      escreval("Status: Temperaturas dentro da normalidade.")
   fimse
   escreval("-------------------------------------------")
fimprocedimento

inicio
   escreval("=== SISTEMA DE MONITORAMENTO CLIMÁTICO ===")
   escreval("Digite a temperatura de cada dia da semana:")
   escreval("")

   para i de 1 ate 7 faca
      escreva("Dia ", i, ": ")
      leia(temperaturas[i])
   fimpara

   CalcularMedia
fimalgoritmo