Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/05/2026

Var
   notas: vetor[1..3,1..3] de real  // 3 alunos, 3 notas cada
   i, j: inteiro
   media: real

// Procedimento para calcular média
Procedimento CalcularMedia(a: inteiro)
Var
   soma: real
   j: inteiro
Inicio
   soma <- 0

   Para j de 1 ate 3 faca
      soma <- soma + notas[a,j]
   FimPara

   media <- soma / 3

   Se media >= 6 entao
      escreval("Aluno ", a, " APROVADO com media: ", media:0:2)
   Senao
      escreval("Aluno ", a, " REPROVADO com media: ", media:0:2)
   FimSe
FimProcedimento

Inicio
   escreval("=== SISTEMA DE MEDIAS ===")

   // Entrada de dados
   Para i de 1 ate 3 faca
      escreval("Aluno ", i)
      Para j de 1 ate 3 faca
         escreva("Digite a nota ", j, ": ")
         leia(notas[i,j])
      FimPara
   FimPara

   escreval("")
   escreval("=== RESULTADOS ===")

   // Processamento e saída
   Para i de 1 ate 5 faca
      CalcularMedia(i)
   FimPara

Fimalgoritmo