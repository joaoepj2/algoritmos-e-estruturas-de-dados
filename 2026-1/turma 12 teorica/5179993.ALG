Algoritmo "5179993.alg"
//Controle de Vendas

Var
// Seção de Declarações das variáveis 
   produtos: vetor [1..5] de caractere
   quantidade: vetor [1..5] de inteiro
   i, totalVendido, maiorVenda, posicaoMaiorVenda: inteiro
   mediaVendas: real
   
   procedimento mostrarResumo (total: inteiro; media: real; produtoMaisVendido: caractere; maior: inteiro)
      inicio
            escreval("")
            escreval ("====== Rusumo Produtos Vendidos ======")
            escreval ("Total de produtos vendidos: ", total)
            escreval ("Media de produtos de produtos vendidos: ", media)
            escreval ("Produto mais vendido: ", produtoMaisVendido)
            escreval ("Quantidade vendida de produtos mais vendidos: ", maior)
   fimprocedimento

Inicio
      totalVendido <- 0
      maiorVenda <- 0
      posicaoMaiorVenda <- 1

      escreval  ("Controle de vendas de produtos.")
      escreval ("Informe o nome e a quantidade vendida dos 5 produtos.")
      escreval ("")
      
      para i de 1 ate 5 faca
           escreva ("Escreva o nome do produto", i, ": ")
           leia (produtos[i])
           
           escreva ("Escreva a quantidade vendida de ", produtos[i], ": ")
           leia (quantidade[i])
           
           totalVendido <- totalVendido + quantidade[i]

           se quantidade[i] > maiorVenda entao
           maiorVenda <- quantidade[i]
           posicaoMaiorVenda <- 1
           fimse
           
           escreval ("")
     fimpara
           
     mediaVendas <- totalVendido / 5
     
     escreval ("====== Produtos Informados ======")
     
     para i de 1 ate 5 faca
          escreval (produtos[1], " - ", quantidade[i], " unidades vendidas.")
     fimpara
           
     mostrarResumo (totalVendido, mediaVendas, produtos[posicaoMaiorVenda], maiorVenda)
     
Fimalgoritmo