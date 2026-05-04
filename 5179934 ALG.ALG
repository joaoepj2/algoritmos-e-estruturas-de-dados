Algoritmo "5179934 Alg"

var
   nomes      : vetor[1..10] de caractere
   precos     : vetor[1..10] de real
   quantidades: vetor[1..10] de inteiro
   n          : inteiro
   i          : inteiro
   indicadorMaisCaro : inteiro
   indicadorMaisBarato : inteiro
   totalEstoque : real

procedimento exibirRelatorio()
var
   j : inteiro
inicio
   escreval("========================================")
   escreval("         RELATORIO DO ESTOQUE           ")
   escreval("========================================")
   para j de 1 ate n faca
      escreval("Produto : ", nomes[j])
      escreval("Preco   : R$ ", precos[j]:8:2)
      escreval("Qtd     : ", quantidades[j], " unidades")
      escreval("Subtotal: R$ ", (precos[j] * quantidades[j]):8:2)
      escreval("----------------------------------------")
   fimpara
fimprocedimento

funcao encontrarMaisCaro(): inteiro
var
   k     : inteiro
   indice: inteiro
inicio
   indice <- 1
   para k de 2 ate n faca
      se precos[k] > precos[indice] entao
         indice <- k
      fimse
   fimpara
   retorne indice
fimfuncao

funcao encontrarMaisBarato(): inteiro
var
   k     : inteiro
   indice: inteiro
inicio
   indice <- 1
   para k de 2 ate n faca
      se precos[k] < precos[indice] entao
         indice <- k
      fimse
   fimpara
   retorne indice
fimfuncao

inicio
   escreval("========================================")
   escreval("   BEM-VINDO AO CONTROLE DE ESTOQUE    ")
   escreval("========================================")
   escreval("")
   escreva("Quantos produtos deseja cadastrar? (1 a 10): ")
   leia(n)

   se (n < 1) ou (n > 10) entao
      escreval("Numero invalido! O programa sera encerrado.")
   senao
      escreval("")
      para i de 1 ate n faca
         escreval("--- Produto ", i, " ---")
         escreva("Nome do produto   : ")
         leia(nomes[i])
         escreva("Preco unitario (R$): ")
         leia(precos[i])
         escreva("Quantidade em estoque: ")
         leia(quantidades[i])
         escreval("")
      fimpara

      // Calcula o valor total do estoque
      totalEstoque <- 0
      para i de 1 ate n faca
         totalEstoque <- totalEstoque + (precos[i] * quantidades[i])
      fimpara

      // Chama o procedimento de relatorio
      exibirRelatorio()

      // Chama as funcoes para encontrar maior e menor preco
      indicadorMaisCaro <- encontrarMaisCaro()
      indicadorMaisBarato <- encontrarMaisBarato()

      escreval("VALOR TOTAL DO ESTOQUE: R$ ", totalEstoque:10:2)
      escreval("")
      escreval("Produto MAIS CARO  : ", nomes[indicadorMaisCaro], " - R$ ", precos[indicadorMaisCaro]:8:2)
      escreval("Produto MAIS BARATO: ", nomes[indicadorMaisBarato], " - R$ ", precos[indicadorMaisBarato]:8:2)
      escreval("========================================")
   fimse

fimalgoritmo

Inicio


Fimalgoritmo