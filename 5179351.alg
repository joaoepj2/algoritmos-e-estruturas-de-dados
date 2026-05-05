Algoritmo 
// Autor(a)    : Felipe Goncalves Ferreira
// Data atual  : 05/05/2026
var
   // 1. Uso de um VETOR para armazenar as notas
   notas: vetor[1..5] de real
   i: inteiro
   soma, mediaFinal: real

// 2. Criação de uma FUNÇÃO para processar os dados (cálculo da média)
funcao calcularMedia(total: real; quantidade: inteiro): real
inicio
   retorne total / quantidade
fimfuncao

inicio
   // 3. Informando ao utilizador quais informações ele deve fornecer
   escreval("--- SISTEMA DE CÁLCULO DE MÉDIA ---")
   escreval("Por favor, informe 5 notas para o processamento.")
   escreval("-----------------------------------")

   soma <- 0

   // 4. Estrutura de REPETIÇÃO para ler os dados e preencher o vetor
   para i de 1 ate 5 faca
      escreva("Digite a nota ", i, ": ")
      leia(notas[i])
      soma <- soma + notas[i] // Processamento matemático
   fimpara

   // Chamada da função para calcular o resultado
   mediaFinal <- calcularMedia(soma, 5)

   // 5. Apresentação dos resultados processados
   escreval(" ")
   escreval("--- RESULTADOS ---")
   escreval("A média das 5 notas inseridas é: ", mediaFinal:4:2)
   escreval(" ")

   escreval("Resumo das notas registradas:")
   // Outra estrutura de repetição para exibir o que foi salvo no vetor
   para i de 1 ate 5 faca
      escreval("Nota ", i, ": ", notas[i])
   fimpara

fimalgoritmo
