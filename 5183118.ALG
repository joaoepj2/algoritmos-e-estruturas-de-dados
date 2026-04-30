Algoritmo "Fatorial"

// Descrição   : Mostra o Fatorial de 1 a 10
// Autor(a)    : Samuel Souza Ferreira
// Data atual  : 30/04/2026

var
   historico: vetor [1..10] de inteiro
   n, i, fat: inteiro
   nomeUsuario: caractere

procedimento ApresentarResultado(posicao: inteiro; valor: inteiro; nome: caractere)

var
   textoFormatado: caractere
   
inicio
   textoFormatado <- maiusc(nome)
   escreval("Oi ", textoFormatado, ", no passo ", posicao, " o valor é: ", valor)
fimprocedimento

inicio
   escreval("=========================================")
   escreval("    BEM-VINDO AO CALCULADOR DE FATORIAL  ")
   escreval("=========================================")
   escreva("Primeiro, digite o seu nome: ")
   leia(nomeUsuario)

   escreval("")
   escreval("Olá, ", nomeUsuario, "!")
   escreva("Digite um número inteiro (entre 1 e 10) para calcular o fatorial: ")
   leia(n)

   fat <- 1
   para i de 1 ate n faca
      fat <- fat * i
      historico[i] <- fat
   fimpara

   escreval("")
   escreval("--- PROCESSAMENTO CONCLUÍDO ---")
   escreval("")

   para i de 1 ate n faca
      ApresentarResultado(i, historico[i], nomeUsuario)
   fimpara

   escreval("")
   escreval("O resultado final do fatorial de ", n, " é: ", fat)
fimalgoritmo
