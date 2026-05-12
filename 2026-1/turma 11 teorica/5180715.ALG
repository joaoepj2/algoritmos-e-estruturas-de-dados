Algoritmo "Notas_Alunos"

Var
   notas: vetor[1..100] de real
   i, qtd: inteiro
   media: real

Procedimento calcularMedia(qtd: inteiro)
Var
   soma: real
   j: inteiro
Inicio
   soma <- 0
   Para j de 1 ate qtd faca
      soma <- soma + notas[j]
   FimPara

   media <- soma / qtd
FimProcedimento

Inicio

   Escreva("Quantos alunos deseja cadastrar? ")
   Leia(qtd)

   Para i de 1 ate qtd faca
      Escreva("Digite a nota do aluno ", i, ": ")
      Leia(notas[i])
   FimPara

   calcularMedia(qtd)

   Escreva("\nMedia da turma: ", media:2:2, "\n")

   Escreva("Alunos com nota acima da media:\n")
   Para i de 1 ate qtd faca
      Se notas[i] > media entao
         Escreva("Aluno ", i, " - Nota: ", notas[i]:2:2, "\n")
      FimSe
   FimPara

Fimalgoritmo