algoritmo "Calculadora_Media_Vetor"
// Disciplina  : Lógica de Programação
// Descrição   : Armazena notas em um vetor e calcula a média usando procedimento
// Autor       : Gemini

var
   notas: vetor [1..4] de real
   i: inteiro
   media_final: real

// Procedimento para calcular a média das notas contidas no vetor
procedimento calcularMedia()
var
   soma: real
inicio
   soma <- 0
   // Estrutura de repetição para somar os valores do vetor
   para i de 1 ate 4 faca
      soma <- soma + notas[i]
   fimpara

   media_final <- soma / 4
fimprocedimento

inicio
   escreval("--- SISTEMA DE NOTAS ESCOLARES ---")
   escreval("Por favor, informe as 4 notas do aluno abaixo:")
   escreval("")

   // Estrutura de repetição para entrada de dados
   para i de 1 ate 4 faca
      escreva("Digite a ", i, "ª nota: ")
      leia(notas[i])
   fimpara

   // Chamada do procedimento para processar os dados
   calcularMedia()

   // Apresentação do resultado
   escreval("")
   escreval("----------------------------------")
   escreval("RESULTADO FINAL:")
   escreval("Média calculada: ", media_final:2:2)

   se (media_final >= 7) entao
      escreval("Status: ALUNO APROVADO")
   senao
      escreval("Status: ALUNO EM RECUPERAÇÃO")
   fimse
   escreval("----------------------------------")

fimalgoritmo