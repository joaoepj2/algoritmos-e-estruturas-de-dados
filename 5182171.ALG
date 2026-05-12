algoritmo "vetor, funcao e repeticao - Andre"

var

 numeros: vetor[1..10] de real
 i: inteiro
 nome: caractere


 funcao media(): real
  var
   soma: real
   j: inteiro
   
  inicio
   soma <- 0
   para j de 1 ate 10 faca
      soma <- soma + numeros[j]
   fimpara
   retorne soma / 10
 fimfuncao


inicio

 repita
   escreva("Digite seu nome (ate 10 letras): ")
   leia(nome)

   se compr(nome) > 10 entao
    escreval("Nome muito grande! Tente novamente.")
   fimse
   
 ate compr(nome) <= 10

 escreval("Bem-vindo, ", nome, "!")


   para i de 1 ate 10 faca
      escreva("Digite o numero ", i, ": ")
      leia(numeros[i])
   fimpara


   escreval("Valores digitados:")
   para i de 1 ate 10 faca
      escreval(numeros[i])
   fimpara


   escreval("Media = ", media())



fimalgoritmo
