algoritmo "5182889"

var
   numeros: vetor[1..5] de inteiro
   i: inteiro
   media: real


funcao calcularMedia(v: vetor[1..5] de inteiro): real
var
   soma, i: inteiro
inicio
   soma <- 0

   para i de 1 ate 5 faca
      soma <- soma + v[i]
   fimpara

   retorne soma / 5
fimfuncao

inicio
   escreval("Digite 5 números:")

   para i de 1 ate 5 faca
      escreva("Número ", i, ": ")
      leia(numeros[i])
   fimpara


   media <- calcularMedia(numeros)

   escreval("A média dos números é: ", media)

fimalgoritmo