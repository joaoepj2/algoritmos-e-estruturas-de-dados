algoritmo "media_alunos"

var
   notas: vetor[1..5] de real
   i: inteiro
   media: real


funcao calcularMedia: real
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
   escreval("Digite suas notas:")

   para i de 1 ate 5 faca
      escreva("Nota ", i, ": ")
      leia(notas[i])
   fimpara

   media <- calcularMedia

   escreval("Média: ", media:0:2)

   se media >= 6 entao
      escreval("Aprovado")
   senao
      escreval("Reprovado")
   fimse

fimalgoritmo