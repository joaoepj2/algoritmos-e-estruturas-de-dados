Algoritmo "Trabalho de Algoritmo"

//qtd = quantidade, i = repetidor, mn = maior nota
//mnn = menor nota, a= aprovados, r = reprovados

Var

   notas: vetor[1..100] de real
   qtd, i, a, r: inteiro
   media, mn, mnn:real

funcao cm(qtd: inteiro): real
Var

   soma: real
   i: inteiro

Inicio

   soma <- 0

   para i de 1 até qtd faca
      Soma <- soma + notas[i]
   fimpara

   retorne soma / qtd
fimfuncao

Inicio

   escreva("Digite a quantidade de alunos (1 a 100): ")
   leia(qtd)

   enquanto (qtd <= 0) ou (qtd > 100) faca
      escreva("Quantidade de alunos inválida. O valor deve ser entre 1 e 100.")
      escreva("Digite a quantidade novamente: ")
      leia(qtd)
   fimenquanto

   para i de 1 até qtd faca
      escreva("Digite a nota do aluno ", i, ": ")
      leia(notas[i])
      enquanto (notas[i] < 0) ou (notas[i] > 10) faca
         escreval("Nota invalida! Digite uma nota entre 0 e 10.")
         escreva("Digite novamente a nota do aluno ", i, ": ")
         leia(notas[i])
      fimenquanto
   fimpara

   media <- cm(qtd)

   mn <- notas[1]
   mnn <- notas[1]
   a <- 0
   r <- 0

   para i de 1 ate qtd faca
      se notas[i] > mn entao
         mn <- notas[i]
      fimse

      se notas[i] < mnn entao
         mnn <- notas[i]
      fimse

      se notas[i] >= 6 entao
         a <- a + 1
      senao
         r <- r + 1
      fimse
   fimpara

   escreval("Media da turma: ", media)
   escreval("Maior nota: ", mn)
   escreval("Menor nota: ", mnn)
   escreval("Aprovados: ", a)
   escreval("Reprovados: ", r)

Fimalgoritmo