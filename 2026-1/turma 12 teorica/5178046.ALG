Algoritmo "5178046"
Var
   notas: vetor[1..5] de real
   i: inteiro
   media: real

Procedimento calcularMedia()
Var
   s: real
   j: inteiro
Inicio
   s <- 0
   Para j <- 1 ate 5 faca
      s <- s + notas[j]
   FimPara
   media <- s / 5
FimProcedimento

Inicio
   Escreval("=== Calculadora de Media Escolar ===")
   Escreval("Voce deve digitar as notas de 5 provas (de 0 a 10).")
   Escreval("")

   Para i <- 1 ate 5 faca
      Escreva("Digite a nota da prova ", i, ": ")
      Leia(notas[i])
   FimPara

   calcularMedia()

   Escreval("")
   Escreval("=== RESULTADO ===")
   Escreval("Sua media final e: ", media:4:2)

   Se media >= 7 entao
      Escreval("Situacao: APROVADO! Parabens!")
   Senao
      Se media >= 5 entao
         Escreval("Situacao: RECUPERACAO.")
      Senao
         Escreval("Situacao: REPROVADO.")
      FimSe
   FimSe

FimAlgoritmo