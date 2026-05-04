algoritmo "sistema_notas"

var
   notas: vetor[1..5] de real
   i: inteiro
   mediaFinal: real

// Função
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

   escreval("Digite 5 notas (valores de 0 a 10:")

   para i de 1 ate 5 faca
      escreval("Nota ", i, ": ")
      leia(notas[i])
   fimpara

   mediaFinal <- calcularMedia()

   escreval("Média: ", mediaFinal:0:2)

   se mediaFinal >= 6 entao
      escreval("Aprovado")
   senao
      escreval("Reprovado")
   fimse

fimalgoritmo