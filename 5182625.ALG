Algoritmo "5182625"
//O programa deve conter um vetor, um procedimento ou função, uma estrutura de repetição

Var

procedimento Metade(number:real)
var
   total:real
inicio
   total <- number/2
   escreval("A metade do número é:", total)

fimprocedimento

numero :vetor [1..2] de real
numero1 :vetor[1..2] de inteiro
i:inteiro


Inicio

   escreval("---------------------------------")
   escreva("Digite um número a ser dividido por 2: ")
   leia(numero[1])

   Metade(numero[1])

   escreval("---------------------------------")

   escreva("Digite um número inteiro para cálcular o fatorial: ")
   leia(numero1[1])

   se (numero1[1]<0) entao
      escreval ("Erro: Não existe fatorial de número negativo.")
   senao
      numero[2] <- 1
      para i de 1 ate numero1[1] faca
         numero[2] <- numero[2]*i
      fimpara

      escreval("O fatorial de", numero1[1]," é = ", numero[2])
      escreval("---------------------------------")
   fimse


Fimalgoritmo