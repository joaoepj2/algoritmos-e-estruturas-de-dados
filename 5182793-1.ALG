algoritmo "Calculo"

var
   notas: vetor [1..5] de real
   i: inteiro
   mediaTurma: real

procedimento calcularMedia()
var
   soma: real
   j: inteiro
inicio
   soma <- 0
   
   para j de 1 ate 5 faca
      soma <- soma + notas[j]
   fimpara
   mediaTurma <- soma / 5
fimprocedimento

inicio

   escreval("--- Cadastro de Notas ---")
   para i de 1 ate 5 faca
      escreva("Informe a nota do aluno ", i, ": ")
      leia(notas[i])
   fimpara

   calcularMedia()

   escreval("")
   escreval("--- Resultado Final ---")
   escreval("A média geral da turma é: ", mediaTurma:2:1)
//2:1  2 e as casas decimais e 1 a virgurla fiz assim so para deixar mais ideal para uma media
   se mediaTurma >= 7 entao
      escreval("Status: Desempenho Satisfatório")
   senao
      escreval("Status: Desempenho Insatisfatório")
   fimse
fimalgoritmo
