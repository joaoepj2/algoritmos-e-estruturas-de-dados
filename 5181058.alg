Algoritmo "Trabalho para o dia 05/05/2026"
// Disciplina   : Algoritmo e Estrutura de Dados
// Professor   : JOAO EURIPEDES PEREIRA JUNIOR
// Descrição   : Lê nomes em um vetor, e os processa usando um procedimento.
// Autor(a)    : Jhuan Bernardes Santos

var
   nomes: vetor [1..5] de caractere
   i: inteiro
   j: inteiro

//Para processar e mostrar os nomes

procedimento exibirResultado()

inicio

   escreval("---- PROCESSANDO INFORMAÇÕES ----")
   escreval("Lista dos nomes cadastrados:")

   // Estrutura de repetição "para" o vetor
   para j de 1 ate 5 faca
      escreval("Posição ", j, ": ", nomes[j])
   fimpara

   escreval("-------------------------------")
   escreval("Processamento concluído com sucesso...")
fimprocedimento

inicio
   escreval("BEM-VINDO AO SISTEMA DE CADASTRO")
   escreval("Por favor, forneça os nomes de 5 pessoas.")
   escreval("")

   // Preenchimento do vetor
   para i de 1 ate 5 faca
      escreva("Digite o nome da pessoa ", i, ": ")
      leia(nomes[i])
   fimpara

   // Para exibir o resultado
   exibirResultado()

fimalgoritmo