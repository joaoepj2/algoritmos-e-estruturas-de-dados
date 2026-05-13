Algoritmo "Média notas"

funcao media(): real
var
   o, soma: inteiro
   resul: real
inicio
   para o de 1 ate qtt faca
      soma <- soma + notas[o]
   fimpara

   resul <- soma/qtt

   retorne resul
fimfuncao


Var

   qtt, i: inteiro
   notas: vetor [1..30] de inteiro

Inicio

   escreva ("Digite a quantidade de alunos (máx: 30 alunos): ")
   leia (qtt)

   para i de 1 ate qtt faca
      escreva ("Digite a nota do aluno ", i, ": ")
      leia (notas[i])
   fimpara

   escreva ("O resultado da média de notas da turma é: ", media())


Fimalgoritmo