Algoritmo "5183641"
// Disciplina   : [Algoritmo e Estrutura de Dados]
// Professor   : João Euripes
// Descrição   : Vetor e uma estrutura de repeticção
// Autor(a)    : Giovanna Quaresma
// Data atual  : 04/05/2026
Var
notas: vetor[1..5] de real
media, soma: real
i: inteiro
Inicio
escreval ("Calculadora de media")
escreval ("informe cinco notas")
escreval ("")
soma <- 0
para i <- 1 ate 5 faca
escreva ("digite a nota" , i, ": ")
leia (notas[i])
soma <- soma + notas[1]
fimpara
media <- soma / 5
para i <- 1 ate 5 faca
escreva (notas[i], "")
fimpara
se media -> 7.0 entao
escreval (" Aprovado!")
senao
se media -> 5.0 entao
escreval (" Recuperacao.")
senao
escreval (" Reprovado. :(")
fimse
fimse
Fimalgoritmo