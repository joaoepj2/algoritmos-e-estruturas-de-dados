Algoritmo "media_simples"

Var
   numeros: vetor[1..5] de real
   i: inteiro
   media: real

Funcao calcularMedia(v: vetor[1..5] de real): real
Var
   soma: real
   j: inteiro
Inicio
   soma <- 0
   Para j de 1 ate 5 faca
      soma <- soma + v[j]
   FimPara
   Retorne soma / 5
FimFuncao

Inicio
   Escreva("Digite 5 numeros:\n")

   Para i de 1 ate 5 faca
      Escreva("Numero ", i, ": ")
      Leia(numeros[i])
   FimPara

   media <- calcularMedia(numeros)

   Escreva("A media é: ", media:0:2)
Fim