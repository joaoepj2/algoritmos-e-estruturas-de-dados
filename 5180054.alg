Algoritmo "soma_de_precos"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/05/2026
Var
   // Seção de Declarações das variáveis
   precos: vetor[1..5] de real
   i: inteiro
   total: real
procedimento mostrarResultado(valor: real)
inicio
   escreval ("o valor total das compras foi: R$ ", valor)
fimprocedimento

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   total <- 0
   escreval ("-----------Vamos somar os precos-----------")
   escreval("Digite o preco de 5 produtos:")

   para i de 1 ate 5 faca
      escreva("Produto ", i, ": R$ ")
      leia(precos[i])

      total <- total + precos[i]
   fimpara

   mostrarResultado(total)
   escreval ("-------------------------------------------")

Fimalgoritmo