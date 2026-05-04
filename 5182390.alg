algoritmo "TrabalhoUniube"
// Entrega: 05/05/2026

var
   nomes: vetor[1..2] de caractere
   notas: vetor[1..2] de real
   i: inteiro
   media: real

funcao calc(n: real): real
inicio
   retorne n / 2
fimfuncao

inicio
   para i de 1 ate 2 faca
      escreva("Nome: ")
      leia(nomes[i])
      escreva("Nota total: ")
      leia(notas[i])
   fimpara

   escreval("--- MEDIAS ---")
   para i de 1 ate 2 faca
      media <- calc(notas[i])
      escreval(nomes[i], " media: ", media)
   fimpara
fimalgoritmo