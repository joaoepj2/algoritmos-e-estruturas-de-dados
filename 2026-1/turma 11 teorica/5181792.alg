algoritmo "media_notas"

var
   notas: vetor[1..5] de real
   i: inteiro
   media: real

procedimento calcularMedia()
var
   soma: real
inicio
   soma <- 0

   para i de 1 ate 5 faca
      soma <- soma + notas[i]
   fimpara

   media <- soma / 5
fimprocedimento

inicio

para i de 1 ate 5 faca
   escreva("Digite a nota ", i, ": ")
   leia(notas[i])
fimpara

calcularMedia()

escreva("A média é: ", media)

fimalgoritmo