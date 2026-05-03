algoritmo "ControleDeEstoque"
var
   nomes: vetor[1..5] de caractere
   quantidades: vetor[1..5] de inteiro
   precos: vetor[1..5] de real
   i: inteiro
   totalEstoque: real
procedimento exibirRelatorio()
var
   j : inteiro
   valorItem : real
inicio
   escreval("========================================")
   escreval("        RELATÓRIO DE ESTOQUE            ")
   escreval("========================================")
   escreval("Produto|Qtd|Preço|Total ")
   escreval("----------------------------------------")
   para j de 1 ate 5 faca
      valorItem <- quantidades[j] * precos[j]
      escreval(nomes[j], " | ", quantidades[j], " | R$ ", precos[j]:6:2, " | R$ ", valorItem:8:2)
   fimpara
   escreval("========================================")
   escreval("VALOR TOTAL DO ESTOQUE: R$ ", totalEstoque:10:2)
   escreval("========================================")
fimprocedimento

inicio
   escreval("=== SISTEMA DE CONTROLE DE ESTOQUE ===")
   escreval("Voce deverá cadastrar 5 produtos.")
   escreval("Para cada produto, informe:")
   escreval("  - Nome do produto")
   escreval("  - Quantidade em estoque")
   escreval("  - Preço unitário")
   escreval("--------------------------------------")

   totalEstoque <- 0

   para i de 1 ate 5 faca
      escreval("")
      escreval("--- Produto ", i, " ---")
      escreva("Nome do produto: ")
      leia(nomes[i])
      escreva("Quantidade em estoque: ")
      leia(quantidades[i])
      escreva("Preço unitário (R$): ")
      leia(precos[i])
      totalEstoque <- totalEstoque + (quantidades[i] * precos[i])
   fimpara

   escreval("")
   exibirRelatorio()

fimalgoritmo