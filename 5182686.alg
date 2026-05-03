algoritmo "Trabalho Algoritmos e Estrutura de Dados"
// RA: 5182686
// Aluno: Mateus Oliveira Rezende
// Professor: João Euripedes

var
   notas: vetor[1..5] de real
   i: inteiro
   media: real

procedimento calcularMedia
var
   soma: real
   j: inteiro
inicio
   soma <- 0

   para j de 1 ate 5 faca
      soma <- soma + notas[j]
   fimpara

   media <- soma / 5
fimprocedimento

inicio

   escreval("=== SISTEMA DE NOTAS ===")

   para i de 1 ate 5 faca
      escreva("Digite a nota ", i, ": ")
      leia(notas[i])
   fimpara

   calcularMedia

   escreval("Media = ", media:0:2)

   se media >= 60 entao
   escreval("Aprovado")
   senao
   escreval("Reprovado")
   fimse

fimalgoritmo