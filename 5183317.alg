algoritmo "5183317"

var
   notas: vetor[1..5] de real
   i: inteiro
   media: real

// Procedimento para calcular a média
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

   escreval("=== CALCULO DE MEDIA DE NOTAS ===")

   // Entrada de dados
   para i de 1 ate 5 faca
      escreva("Digite a nota ", i, ": ")
      leia(notas[i])
   fimpara

   // Processamento
   calcularMedia()

   // Saída
   escreval("Notas digitadas:")
   para i de 1 ate 5 faca
      escreva(notas[i], " ")
   fimpara

   escreval("Media final: ", media:0:2)

   se media >= 6 entao
      escreval("Status: APROVADO")
   senao
      escreval("Status: REPROVADO")
   fimse

fimalgoritmo