algoritmo "MediaAlunos"
var
   notas: vetor[1..10] de real
   medias: vetor[1..5] de real
   i: inteiro
   soma: real

procedimento calcularMedia(aluno: inteiro)
inicio
   soma <- (notas[(aluno*2)-1] + notas[aluno*2]) / 2
   medias[aluno] <- soma
fimprocedimento

inicio
   escreval("=== Sistema de Médias de Alunos ===")
   escreval("")

   para i de 1 ate 5 faca
      escreval("Aluno ", i, ":")
      escreva("  Digite a 1ª nota: ")
      leia(notas[(i*2)-1])
      escreva("  Digite a 2ª nota: ")
      leia(notas[i*2])
      calcularMedia(i)
   fimpara

   escreval("")
   escreval("=== Resultados ===")
   para i de 1 ate 5 faca
      escreva("Aluno ", i, " - Média: ", medias[i])
      se medias[i] >= 6 entao
         escreval(" - APROVADO")
      senao
         escreval(" - REPROVADO")
      fimse
   fimpara

fimalgoritmo
