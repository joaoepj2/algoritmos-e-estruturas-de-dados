algoritmo "Sistema_Funcionarios"
var

   salarios: vetor[1..5] de real
   i: inteiro
   totalSalarios: real

funcao SomarSalarios(): real
var

   soma: real
   j: inteiro

inicio

   soma <- 0
   para j de 1 ate 5 faca
      soma <- soma + salarios[j]
   fimpara

   retorne soma

fimfuncao

inicio

   escreval("=== CÁLCULO DE SALÁRIOS DOS FUNCIONÁRIOS ===")
   escreval("Por favor, informe o salário de 5 funcionários.")
   escreval()

   para i de 1 ate 5 faca
      escreva("Digite o salário do funcionário ", i, ": R$ ")
      leia(salarios[i])
   fimpara

   totalSalarios <- SomarSalarios()

   escreval()
   escreval("-----------------------------------")
   escreval("RESULTADO DO PROCESSAMENTO:")
   escreval("Total gasto com salários: R$ ", totalSalarios)
   escreval("Média salarial: R$ ", totalSalarios / 5)
