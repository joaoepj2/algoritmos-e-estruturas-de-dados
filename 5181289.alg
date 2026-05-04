algoritmo "Soma de media"

var
   notas: vetor[1..5] de real
   i: inteiro
   soma, media: real

inicio

   escreval("=== Sistema de Notas ===")

   soma <- 0

   para i de 1 ate 5 faca
      escreva("Digite a nota ", i, ": ")
      leia(notas[i])
      soma <- soma + notas[i]
   fimpara

   media <- soma / 5

   escreval("Média: ", media:0:2)

   se media >= 6 entao
      escreval("Situação: Aprovado")
   senao
      escreval("Situação: Reprovado")
   fimse

fimalgoritmo