Algoritmo "5183004"


var
   numeros: vetor[1..5] de inteiro
   i: inteiro

// Procedimento que recebe o valor e decide o que imprimir
procedimento verificarParidade(v: inteiro)
inicio
   se v % 2 = 0 entao
      escreval(v, " -> é PAR")
   senao
      escreval(v, " -> é ÍMPAR")
   fimse
fimprocedimento

inicio
   escreval("--- ENTRADA DE NÚMEROS ---")

   // Estrutura de repetição para preencher o vetor
   para i de 1 ate 5 faca
      escreva("Digite o ", i, "º número: ")
      leia(numeros[i])
   fimpara

   limpatela
   escreval("--- RESULTADO DA ANÁLISE ---")

   // Estrutura de repetição chamando o procedimento
   para i de 1 ate 5 faca
      verificarParidade(numeros[i])
   fimpara
fimalgoritmo