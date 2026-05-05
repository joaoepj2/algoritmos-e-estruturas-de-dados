Algoritmo "5182879"
// Professor   : JOAO EURIPEDES PEREIRA JUNIOR
// Descrição   : Trabalho de algoritimos
// Autor(a)    : BRUNO THIAGO DE SENA MOINO FILHO
// Data atual  : 05/05/2026
Var
   list:vetor[1..100] de caractere
   opcao, totalItens, i:inteiro

Procedimento AdicionarItem()
Inicio
// Seção de Ccmandos, procedimento, funções, operações, etc...
  limpatela
   Se(totalItens < 100)Entao
      Escreva("Digite o nome do produto: ")
      totalItens <- totalItens + 1
      Leia(list[totalItens])
      EscrevaL("Item adicionado!")
   Senao
      EscrevaL("Erro: A lista está cheia!")
   FimSe
FimProcedimento

Procedimento ListarItens()
Inicio
limpatela
   EscrevaL("--- SUA LISTA ---")
   Para i de 1 ate totalItens faca
      EscrevaL(i, " - ", list[i])
   FimPara
FimProcedimento

Inicio
   totalItens <- 0

   Repita
      EscrevaL("1- Adicionar | 2- Listar | 3- Sair")
      EscrevaL("Digite o número da ação desejada:")
      Leia(opcao)

      Escolha opcao
         Caso 1
            AdicionarItem()
         Caso 2
            ListarItens()
      FimEscolha

   Ate (opcao = 3)

Fimalgoritmo