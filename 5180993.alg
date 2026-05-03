algoritmo "analise_vetor"

var
   numeros: vetor[1..5] de inteiro
   i: inteiro
   soma_total: inteiro
   media: real
   maior_valor: inteiro
   menor_valor: inteiro

//Função para somar
funcao soma(): inteiro
var
   i, total: inteiro
inicio
   total <- 0
   para i de 1 ate 5 faca
      total <- total + numeros[i]
   fimpara
   retorne total
fimfuncao

//Função para média
funcao calcular_media(total: inteiro): real
inicio
   retorne total / 5
fimfuncao

//Função para maior valor
funcao maior(): inteiro
var
   i, m: inteiro
inicio
   m <- numeros[1]
   para i de 2 ate 5 faca
      se numeros[i] > m entao
         m <- numeros[i]
      fimse
   fimpara
   retorne m
fimfuncao

//Função para menor valor
funcao menor(): inteiro
var
   i, m: inteiro
inicio
   m <- numeros[1]
   para i de 2 ate 5 faca
      se numeros[i] < m entao
         m <- numeros[i]
      fimse
   fimpara
   retorne m
fimfuncao

inicio

   escreva("=== ANALISE COMPLETA DE NUMEROS ===\n")

   //Entrada de dados
   para i de 1 ate 5 faca
      escreva("Digite o ", i, "º número: ")
      leia(numeros[i])
   fimpara

   //Processamento
   soma_total <- soma()(numeros)
   media <- calcular_media(soma_total)
   maior_valor <- maior()(numeros)
   menor_valor <- menor()(numeros)

   //Saída
   escreva("\n===== RESULTADOS =====\n")
   escreva("Soma: ", soma_total, "\n")
   escreva("Media: ", media:0:2, "\n")
   escreva("Maior numero: ", maior_valor, "\n")
   escreva("Menor numero: ", menor_valor, "\n")

fimalgoritmo