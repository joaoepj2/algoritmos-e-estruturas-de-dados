algoritmo "media_notas"

var
   notas: vetor[1..5] de real
   i: inteiro
   resultado: real

funcao calcularMedia(): real
var
   soma: real
   j: inteiro
inicio
   soma <- 0

   para j de 1 ate 5 faca
      soma <- soma + notas[j]
   fimpara

   retorne soma / 5
fimfuncao

inicio

   escreval("=== Cálculo de Média ===")
   escreval("Digite 5 notas:")

   para i de 1 ate 5 faca
      escreva("Nota ", i, ": ")
      leia(notas[i])
   fimpara

   resultado <- calcularMedia()

   escreval("A média das notas é:",resultado)

   se resultado >= 6 entao
      escreval("Situação: Aprovado")
   senao
      escreval("Situação: Reprovado")
   fimse

fimalgoritmo