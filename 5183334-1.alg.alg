algoritmo "5183334-1.alg"

var
   notas: vetor [1..4] de real
   soma, media: real
   i: inteiro
   nome: caractere


procedimento exibir_cabecalho()
inicio
   escreval("---------------------------------------")
   escreval("      SISTEMA DE PROCESSAMENTO ESCOLAR ")
   escreval("---------------------------------------")
fimprocedimento

inicio
   exibir_cabecalho()


   escreva("Digite o nome do aluno: ")
   leia(nome)
   escreval("Por favor, informe as 4 notas bimestrais:")


   soma <- 0
   para i de 1 ate 4 faca
      escreva("Digite a ", i, "ª nota: ")
      leia(notas[i])


      soma <- soma + notas[i]
   fimpara


   media <- soma / 4


   escreval("")
   escreval("--- RESULTADO FINAL ---")
   escreval("Aluno: ", nome)
   escreval("Média Calculada: ", media:2:1)

   se (media >= 7) entao
      escreval("Situação: APROVADO")
   senao
      escreval("Situação: RECUPERAÇÃO")
   fimse
   escreval("-----------------------")

fimalgoritmo