algoritmo "sistema_notas"

var
   notas: vetor[1..50] de real
   i, qtd, aprovados: inteiro
   soma, media, maior, menor: real

funcao calcularMedia(s: real; q: inteiro): real
inicio
   retorne s / q
fimfuncao

inicio

   escreval("===== SISTEMA DE NOTAS =====")
   escreva("Quantos alunos? ")
   leia(qtd)

   soma <- 0
   aprovados <- 0

   para i de 1 ate qtd faca
      escreva("Digite a nota do aluno ", i, ": ")
      leia(notas[i])

      soma <- soma + notas[i]

      se i = 1 entao
         maior <- notas[i]
         menor <- notas[i]
      senao
         se notas[i] > maior entao
            maior <- notas[i]
         fimse

         se notas[i] < menor entao
            menor <- notas[i]
         fimse
      fimse

      se notas[i] >= 7 entao
         aprovados <- aprovados + 1
      fimse
   fimpara

   media <- calcularMedia(soma, qtd)

   escreval("\n===== RESULTADOS =====")
   escreval("Média da turma: ", media:0:2)
   escreval("Maior nota: ", maior:0:2)
   escreval("Menor nota: ", menor:0:2)
   escreval("Alunos aprovados: ", aprovados)

fimalgoritmo