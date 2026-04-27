algoritmo "5179091"
var

   precos: vetor[1..5] de real
   i: inteiro
   totalLote: real

funcao SomarEstoque(): real
var

   soma: real
   j: inteiro

inicio

   soma <- 0
   para j de 1 ate 5 faca
      soma <- soma + precos[j]
   fimpara

   retorne soma

fimfuncao

inicio

   escreval("=== CÁLCULO DE LOTE DE PEÇAS ===")
   escreval("Por favor, informe o valor de 5 peças recebidas no lote.")
   escreval()

   para i de 1 ate 5 faca
      escreva("Digite o preço da peça ", i, ": R$ ")
      leia(precos[i])
   fimpara

   totalLote <- SomarEstoque()

   escreval()
   escreval("-----------------------------------")
   escreval("RESULTADO DO PROCESSAMENTO:")
   escreval("O valor total do lote de peças é: R$ ", totalLote)
   escreval("A média de preço por peça é: R$ ", totalLote / 5)

fimalgoritmo