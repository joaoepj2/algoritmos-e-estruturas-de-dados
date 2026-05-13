algoritmo "5183277"

var
   numeros: vetor[1..5] de inteiro
   invertido: vetor[1..5] de inteiro
   i: inteiro

procedimento inverterVetor()
var
   j, k: inteiro
inicio
   j <- 1
   k <- 5

   enquanto j <= 5 faca
      invertido[j] <- numeros[k]
      j <- j + 1
      k <- k - 1
   fimenquanto
fimprocedimento

inicio
   escreval("=== Inversor de Vetor ===")
   escreval("Digite 5 números:")

   para i de 1 ate 5 faca
      escreva("Número ", i, ": ")
      leia(numeros[i])
   fimpara

   inverterVetor()

   escreval("Vetor invertido:")
   para i de 1 ate 5 faca
      escreva(invertido[i], " ")
   fimpara

   escreval("")

fimalgoritmo