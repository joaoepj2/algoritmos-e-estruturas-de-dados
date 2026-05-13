algoritmo "5183072"

var
   numeros: vetor[1..6] de inteiro
   i: inteiro
   pares, impares: inteiro

procedimento contarParesImpares()
var
   j: inteiro
inicio
   pares <- 0
   impares <- 0

   para j de 1 ate 6 faca
      se numeros[j] mod 2 = 0 entao
         pares <- pares + 1
      senao
         impares <- impares + 1
      fimse
   fimpara
fimprocedimento

inicio
   escreval("=== Verificador de Pares e Ímpares ===")
   escreval("Digite 6 números inteiros:")

   para i de 1 ate 6 faca
      escreva("Número ", i, ": ")
      leia(numeros[i])
   fimpara

   contarParesImpares()

   escreval("Quantidade de números pares: ", pares)
   escreval("Quantidade de números ímpares: ", impares)

fimalgoritmo