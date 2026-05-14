algoritmo "notas_alunos"

var
   notas: vetor[1..5] de real
   i: inteiro

// função para calcular média
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

   escreval("Digite 5 notas:")

   para i de 1 ate 5 faca
      escreva("Nota ", i, ": ")
      leia(notas[i])
   fimpara

   escreval("Média: ", calcularMedia():0:2)

fimalgoritmo