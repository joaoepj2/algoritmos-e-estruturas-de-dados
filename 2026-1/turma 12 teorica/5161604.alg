algoritmo "ControledeGastos"

var
   gastos: vetor[1..5] de real
   i: inteiro
   total: real
   soma: real
   j: inteiro

funcao calcularTotal: real
var

inicio
   soma <- 0

   para j de 1 ate 5 faca
      soma <- soma + gastos[j]
   fimpara

   retorne soma
fimfuncao

inicio

   escreval("===================================")
   escreval("      CONTROLE SIMPLES DE GASTOS")
   escreval("===================================")
   escreval("Digite o valor de 5 gastos do dia.")
   escreval("")

   para i de 1 ate 5 faca
      escreva("Digite o valor do gasto ", i, ": R$ ")
      leia(gastos[i])
   fimpara

   total <- calcularTotal

   escreval("")
   escreval("===================================")
   escreval("Total gasto no dia: R$ ", total)

   se total <= 100 entao
      escreval("Situacao: Gastos dentro do controle.")
   senao
      escreval("Situacao: Atencao, gastos acima de R$100.")
   fimse

   escreval("===================================")

fimalgoritmo