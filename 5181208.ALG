algoritmo: "5181208.alg"
// Disciplina  : Algoritmos
// Descrição   : Processa um vetor de números e calcula a soma total
// Autor       : Kauan
// Data atuwal : 05/05/2026

var
   // Requisito: Uso de Vetor
   numeros: vetor [1..5] de real
   i: inteiro
   resultadoSoma: real

// Requisito: Uso de Função (ou Procedimento)
// Esta função processa os dados do vetor e retorna a soma
funcao somarValores(): real
var
   j: inteiro
   acumulador: real
inicio
   acumulador <- 0
   // Requisito: Estrutura de Repetição
   para j de 1 ate 5 faca
      acumulador <- acumulador + numeros[j]
   fimpara
   retorne acumulador
fimfuncao

inicio
   // Requisito: Informar o usuário
   escreval("=========================================")
   escreval("   PROCESSADOR DE DADOS NUMÉRICOS")
   escreval("=========================================")
   escreval("Digite 5 números para calcularmos a soma.")
   escreval("")

   // Requisito: Estrutura de Repetição para entrada
   para i de 1 ate 5 faca
      escreva("Informe o ", i, "º valor: ")
      leia(numeros[i])
   fimpara

   // Requisito: Processamento (chamada da função)
   resultadoSoma <- somarValores()

   // Requisito: Apresentação do resultado
   escreval("")
   escreval("-----------------------------------------")
   escreval("RESULTADO DO PROCESSAMENTO:")
   escreval("A soma de todos os valores é: ", resultadoSoma:2:2)
   escreval("-----------------------------------------")

fimalgoritmo