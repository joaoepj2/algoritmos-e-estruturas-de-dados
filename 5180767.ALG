algoritmo "notasalunos"

var
   n, i: inteiro
   notas: vetor[1..50] de real
   soma, media: real

// Procedimento para ler as notas
procedimento lerNotas
var
   i: inteiro
inicio
   para i de 1 ate n faca
      escreva("Digite a nota do aluno ", i, ": ")
      leia(notas[i])
   fimpara
fimprocedimento

// Procedimento para somar todas as notas
procedimento somarNotas
var
   i: inteiro
inicio
   soma <- 0  // CORRIGIDO: Inicializa soma com 0
   para i de 1 ate n faca
      soma <- soma + notas[i]  // CORRIGIDO: Adiciona cada nota à soma
   fimpara
fimprocedimento

inicio
   escreva("Quantos alunos? ")
   leia(n)

   // Valida se o número de alunos está dentro do limite do vetor
   se (n < 1) ou (n > 50) entao
      escreval("Numero invalido! O programa aceita de 1 a 50 alunos.")
   senao
      escreval("")
      escreval("=================================")
      escreval("     SISTEMA DE NOTAS DA TURMA    ")
      escreval("=================================")
      escreval("")

      lerNotas
      escreval("")
      somarNotas

      media <- soma / n
limpatela
      escreval("=================================")
      escreval("           RESULTADOS             ")
      escreval("=================================")
      escreval("Soma das notas: ", soma:2:2)
      escreval("Media da turma: ", media:2:2)
      escreval("=================================")
   fimse

fimalgoritmo