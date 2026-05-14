algoritmo "controle_notas_melhorado"

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
   escreval("=== SISTEMA DE NOTAS ===")

   para i de 1 ate 5 faca
      repita
         escreva("Digite a nota ", i, " (0 a 10): ")
         leia(notas[i])

         se (notas[i] < 0) ou (notas[i] > 10) entao
            escreval("Valor inválido! Digite novamente.")
         fimse

      ate (notas[i] >= 0) e (notas[i] <= 10)
   fimpara

   calcularMedia()

   escreval("")
   escreval("Resultado:")

   escreval("Média: ", media:2:2)

   se media >= 6 entao
      escreval("Situação: APROVADO")
   senao
      escreval("Situação: REPROVADO")
   fimse

fimalgoritmo