algoritmo "media_notas"

var

notas: vetor[1..5] de real
i: inteiro
media, soma: real
procedimento mostrarResultado(m: real)

inicio

escreval("A media das notas eh: ", m:0:2)
fimprocedimento

inicio

soma <- 0
para i de 1 ate 5 faca
escreva("Digite a nota ", i, ": ")
leia(notas[i])
soma <- soma + notas[i]

fimpara

media <- soma / 5
mostrarResultado(media)

fimalgoritmo