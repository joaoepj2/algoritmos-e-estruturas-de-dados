algoritmo "5179938"

var
   numeros: vetor[1..10] de inteiro
   i: inteiro
   pares, impares: inteiro

procedimento contarParImpar(v: vetor[1..10] de inteiro; var p, im: inteiro)
var
   j: inteiro
inicio
   p <- 0
   im <- 0

   para j de 1 ate 10 faca
      se v[j] mod 2 = 0 entao
         p <- p + 1
      senao
         im <- im + 1
      fimse
   fimpara
fimprocedimento

inicio
   escreval("Digite 10 números inteiros:")

   para i de 1 ate 10 faca
      escreva("Número ", i, ": ")
      leia(numeros[i])
   fimpara

   contarParImpar(numeros, pares, impares)

   escreval("Quantidade de números pares: ", pares)
   escreval("Quantidade de números ímpares: ", impares)

fimalgoritmo