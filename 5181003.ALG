algoritmo "media_notas"

var
   notas: vetor[1..5] de real
   i: inteiro
   media: real

funcao calcularMedia(): real
var
   soma: real
   j: inteiro
inicio
   soma <- 0

   para j de 1 ate 5 faca
      soma <- soma + notas[j]
   fimpara

   retorne soma / 5
fimfuncao

inicio

   escreval("====================================")
   escreval("       CALCULO DA MEDIA FINAL       ")
   escreval("====================================")
   escreval("Digite 5 notas, uma por vez.")
   escreval("As notas devem estar entre 0 e 10.")
   escreval("")

   para i de 1 ate 5 faca
      escreva("Digite a ", i, " nota: ")
      leia(notas[i])
   fimpara

   media <- calcularMedia()

   escreval("")
   escreval("====================================")
   escreval("Resultado:")
   escreval("Media das notas: ", media:5:2)

   se media >= 7 entao
      escreval("Situacao: APROVADO")
   senao
      escreval("Situacao: REPROVADO")
   fimse

   escreval("====================================")

fimalgoritmo