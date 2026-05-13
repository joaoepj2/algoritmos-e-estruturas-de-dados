Algoritmo "5182578.alg"



Var
   notas: vetor[1..5] de real
   soma, media: real
   i: inteiro

inicio
   // Informando o usuário
   escreval("SISTEMA DE CÁLCULO DE MÉDIA DE NOTAS")
   escreval("Voce irá informar 5 notas.")
   escreval("As notas devem ser valores entre 0 e 10.")
   
   // Estrutura de repetição para preencher o vetor
   soma <- 0
   para i de 1 ate 5 faca
      repita
         escreva("Digite a nota ", i, ": ")
         leia(notas[i])
         se (notas[i] < 0) ou (notas[i] > 10) entao
            escreval("ERRO! A nota deve estar entre 0 e 10. Tente novamente.")
         fimse
      ate (notas[i] >= 0) e (notas[i] <= 10)
      soma <- soma + notas[i]
   fimpara

   // Calculando a média
   media <- soma / 5

   // Exibindo resultados
   escreval("RESULTADOS:")
   para i de 1 ate 5 faca
      escreval("Nota ", i, ": ", notas[i]:4:1)
   fimpara
   escreval("Média final: ", media:4:2)

   // Classificação
   escreval("CLASSIFICAÇÃO:")
   se media >= 7 entao
      escreval("   APROVADO! Parabéns!")
   senao
      se media >= 5 entao
         escreval("   RECUPERAÇÃO. Estude mais!")
      senao
         escreval("   REPROVADO. Busque reforço!")
      fimse
   fimse

fimalgoritmo


