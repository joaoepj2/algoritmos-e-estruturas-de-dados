algoritmo "5126193"

var
   notas: vetor[1..5] de real
   i: inteiro
   media: real
   soma: real
   j: inteiro
inicio
   soma <- 0

   para j de 1 ate 5 faca
      soma <- soma + j
   fimpara

   media <- soma / 5
fimfuncao

   para i de 1 ate 5 faca
      escreva("Digite a nota ", i, ": ")
      leia(notas[i])
   fimpara

   media <- media(notas)

   escreval("Media = ", media)

fimalgoritmo
