algoritmo "5179926"
// Programa  : Calculadora de Media Escolar
// Autor     : Pedro Eduardo Ferreira Carvalho
// RA        : 5179926
// Descricao : O usuario informa 5 notas. O programa armazena em um vetor,
//             calcula a media por meio de uma funcao e exibe
//             se o aluno foi aprovado, em recuperacao ou reprovado.

var
   notas : vetor[1..5] de real
   media : real
   i     : inteiro

// -------------------------------------------------------
// Funcao que calcula e retorna a media das notas
// -------------------------------------------------------
funcao calcularMedia(): real
var
   soma : real
   j    : inteiro
inicio
   soma <- 0
   para j de 1 ate 5 faca
      soma <- soma + notas[j]
   fimpara
   retorne soma / 5
fimfuncao

// -------------------------------------------------------
// Programa principal
// -------------------------------------------------------
inicio
   escreval("============================================")
   escreval("       CALCULADORA DE MEDIA ESCOLAR         ")
   escreval("  Aluno : Pedro Eduardo Ferreira Carvalho   ")
   escreval("  RA    : 5179926                           ")
   escreval("============================================")
   escreval("")
   escreval("Voce deve informar 5 notas.")
   escreval("Cada nota deve ser um valor entre 0 e 10.")
   escreval("")

   // Leitura das notas com validacao
   para i de 1 ate 5 faca
      escreva("  Digite a nota ", i, ": ")
      leia(notas[i])

      enquanto (notas[i] < 0) ou (notas[i] > 10) faca
         escreval("  ATENCAO: Nota invalida! Digite entre 0 e 10.")
         escreva("  Digite novamente a nota ", i, ": ")
         leia(notas[i])
      fimenquanto
   fimpara

   // Calcula a media usando a funcao
   media <- calcularMedia()

   // Exibicao dos resultados
   escreval("")
   escreval("--------------------------------------------")
   escreval("  RESULTADO FINAL")
   escreval("--------------------------------------------")

   escreval("  Notas registradas:")
   para i de 1 ate 5 faca
      escreval("    Nota ", i, ": ", notas[i]:0:1)
   fimpara

   escreval("")
   escreval("  Media final: ", media:0:2)
   escreval("")

   // Verifica a situacao do aluno
   se media >= 7 entao
      escreval("  Situacao: APROVADO! Parabens!")
   senao
      se media >= 5 entao
         escreval("  Situacao: RECUPERACAO. Bons estudos!")
      senao
         escreval("  Situacao: REPROVADO. Nao desista!")
      fimse
   fimse

   escreval("============================================")
fimalgoritmo