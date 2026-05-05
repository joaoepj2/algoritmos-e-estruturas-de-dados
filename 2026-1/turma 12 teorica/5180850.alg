Algoritmo "Cadastro_Notas_Alunos"

Var
   nomes: vetor[1..50] de caractere
   notas: vetor[1..50] de real
   totalAlunos, i: inteiro
   mediaTurma: real

Procedimento calcularMedia(qtd: inteiro, vNotas: vetor de real, Var media: real)
Var
   soma, j: inteiro
Begin
   soma <- 0
   Para j de 1 ate qtd faca
      soma <- soma + vNotas[j]
   FimPara
   media <- soma / qtd
EndProcedimento

Inicio
   Escreva("Informe a quantidade de alunos: ")
   Leia(totalAlunos)

   Para i de 1 ate totalAlunos faca
      Escreva("Digite o nome do aluno ", i, ": ")
      Leia(nomes[i])
      Escreva("Digite a nota de ", nomes[i], ": ")
      Leia(notas[i])
   FimPara

   calcularMedia(totalAlunos, notas, mediaTurma)

   Escreval("\n--- Resultado dos Alunos ---")
   Para i de 1 ate totalAlunos faca
      Se notas[i] >= 60 entao
         Escreval(nomes[i], " - Aprovado")
      Senao
         Escreval(nomes[i], " - Reprovado")
      FimSe
   FimPara

   Escreval("\nMédia da turma: ", mediaTurma)

FimAlgoritmo