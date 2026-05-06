algoritmo "CalculadoraDeNotas"
var
   notas: vetor[1..5] de real
   soma, media: real
   i: inteiro
   situacao: caractere

procedimento calcularMedia()
inicio
   soma <- 0
   para i de 1 ate 5 faca
      soma <- soma + notas[i]
   fimpara
   media <- soma / 5
fimprocedimento

inicio
   escreval("========================================")
   escreval("     CALCULADORA DE MEDIA ESCOLAR       ")
   escreval("========================================")
   escreval("Voce devera informar 5 notas (de 0 a 10)")
   escreval("")

   para i de 1 ate 5 faca
      escreva("Digite a nota ", i, ": ")
      leia(notas[i])
   fimpara

   calcularMedia()

   escreval("")
   escreval("========================================")
   escreval("           RESULTADO FINAL              ")
   escreval("========================================")

   escreval("Notas informadas:")
   para i de 1 ate 5 faca
      escreval("  Nota ", i, ": ", notas[i]:4:1)
   fimpara

   escreval("")
   escreval("Media final: ", media:4:1)

   se media >= 6 entao
      situacao <- "APROVADO"
   senao
      situacao <- "REPROVADO"
   fimse

   escreval("Situacao: ", situacao)
   escreval("========================================")
fimalgoritmo
