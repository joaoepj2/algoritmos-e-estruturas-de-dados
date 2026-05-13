algoritmo

var
   notas:vetor [1..5] de real
   i:inteiro
   soma, media:real

procedimento calculaMedia()
inicio

   para i de 1 ate 5 faca
      soma <- soma + notas[i]
   fimpara

   media <- soma / 5
fimprocedimento

inicio

   escreval("Digite 5 notas:")

   para i de 1 ate 5 faca
      escreval("Nota ", i, ": ")
      leia(notas[i])
   fimpara

   calculaMedia()

   escreval("Media final: ", media)

   se media >= 6 entao
      escreval("Aluno aprovado")
   senao
      escreval("Aluno reprovado")
   fimse

fimalgoritmo