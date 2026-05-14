Algoritmo "5181497"

procedimento operacao()
inicio
   escolha operador
   caso 1
      soma()
   caso 2
      subtracao()
   caso 3
      multiplicacao()
   caso 4
      divisao()
   fimescolha
fimprocedimento

procedimento soma()
inicio
   resultado <- numero[1] + numero[2]
      escreval("--------------------------------")
   escreval("Resultado da SOMA: ", resultado)
   escreval("--------------------------------")
fimprocedimento

procedimento subtracao()
inicio
   resultado <- numero[1] - numero[2]
      escreval("--------------------------------")
   escreval("Resultado da SUBTRAÇÃO: ", resultado)
   escreval("--------------------------------")
fimprocedimento

procedimento multiplicacao()
inicio
   resultado <- numero[1] * numero[2]
      escreval("--------------------------------")
   escreval("Produto da MULTIPLICAÇÃO: ", resultado)
   escreval("--------------------------------")
fimprocedimento

procedimento divisao()
inicio
   resultado <- numero[1] / numero[2]
         escreval("--------------------------------")
   escreval("Resultado da DIVISÃO: ", resultado)
   escreval("--------------------------------")
fimprocedimento

Var

   numero: vetor [1..2] de inteiro
   operador: inteiro
   resultado: real

Inicio

   escreva("Digite o primeiro número: ")
   leia(numero[1])

   repita
      escreval("Escolha o operador:")
      escreval("1. +")
      escreval("2. -")
      escreval("3. *")
      escreval("4. /")
      leia (operador)

      se (operador < 1) ou (operador > 4) entao
         escreval("Esta operação não existe. Por favor, escolha um operador válido.")
      fimse
   ate (operador >= 1) e (operador <= 4)

   escreva("Digite o segundo número: ")
   leia(numero[2])
   
   operacao()


Fimalgoritmo