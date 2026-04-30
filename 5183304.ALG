algoritmo "Inventário Loja de Roupa"

var

  // Vetores

  produtos: vetor [1..3] de caractere
  quantidades: vetor [1..3] de inteiro
  precos: vetor [1..3] de real

  i: inteiro
  valorTotalLoja, valorItem: real

  // Função estoque

funcao StatusEstoque(qtd: inteiro): caractere
  inicio
    se (qtd < 5) entao
      retorne "REPOR"
    senao
      retorne "ESTOQUE OK"
    fimse
fimfuncao

inicio
  escreval("*SISTEMA DE ESTOQUE*")
  escreval("Cadastre os itens")

  // Estrutura de repetição

  para i de 1 ate 3 faca
    escreval("Nome do produto (Ex: Camisa, Tênis, Moletom): ")
    leia(produtos[i])
    escreval("No estoque: ")
    leia(quantidades[i])
    escreval("Valor Unidade: R$ ")
    leia(precos[i])
    limpatela
  fimpara

  limpatela

  escreval("----------------- Inventário -----------------")
  escreval("PRODUTO          | QTD | VALOR TOTAL  | STATUS")

  valorTotalLoja <- 0

  // Processo e saída

  para i de 1 ate 3 faca

    // Multiplicação dos itens x preço

    valorItem <- quantidades[i] * precos[i]

    // Acumula o valor total da loja

    valorTotalLoja <- valorTotalLoja + valorItem

    // Exibição formatada

    escreval(produtos[i]:16, " | ", quantidades[i]:3, " | R$", valorItem:10:2, " | ", StatusEstoque(quantidades[i]))
  fimpara

  // Exibe o valor total dos produtos
  escreval("VALOR TOTAL DO ESTOQUE: R$", valorTotalLoja:10:2)

fimalgoritmo