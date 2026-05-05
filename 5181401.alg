algoritmo "MediaVetor"

var
numeros: vetor[1..3] de real
i: inteiro
media: real
procedimento calcularMedia
var
soma: real
j: inteiro
inicio
soma <- 0
para j de 1 ate 3 faca
soma <- soma + numeros[j]
fimpara
media <- soma / 3
fimprocedimento
inicio
escreval("Digite 3 numeros para calcular a media:")
para i de 1 ate 3 faca
escreva("Numero ", i, ": ")
leia(numeros[i])
fimpara
calcularMedia
escreval("A media dos numeros é: ", media)
fimalgoritmo