Algoritmo "semnome"

Var


  numeros: vetor [1..100] de inteiro
   x, y: inteiro
   
   procedimento calculo
var
   Z: inteiro
Inicio

 escreval("---------------------------------------")
 escreval("RESULTADO (PROCESSAMENTO DE CÁLCULOS):")


   Para z de 1 ate x faca
      escreval("O dobro de", numeros[z], " é:", numeros[z] * 2)
   fimpara
FimProcedimento

inicio

   escreval("Bem-vindo! Este programa armazena 10 números em um vetor.")
   escreval("Por favor, forneça os valores para calcularmos o dobro de cada um.")
   escreval("")
   escreval("Quantas linhas de um a 100 voce quer)")
 leia (y)
 
 Para x de 1 ate y faca
      escreva("Digite o ", x, "º número: ")
      leia(numeros[x])
   fimpara
   limpatela
 calculo
Fimalgoritmo