Algoritmo "semnome"
var
notas: vetor[1..3] de real
i: inteiro
soma, media: real

// PROCEDIMENTO: Função modular para exibir o resultado
procedimento exibirResultado(m: real)
inicio
escreval("---------------------------")
   escreval("A média final é: ", m:4:2)
         se m >= 7 entao                             '
      escreval("Situação: Aprovado")
   senao
      escreval("Situação: Reprovado")
   fimse
   escreval("---------------------------")
fimprocedimento

inicio
   soma := 0

   // ESTRUTURA DE REPETIÇÃO (PARA)
   para i de 1 ate 3 faca
      escreva("Digite a nota ", i, ": ")
      leia(notas[i])
      soma := soma + notas[i]
   fimpara

   media := soma / 3

   // CHAMADA DO PROCEDIMENTO
   exibirResultado(media)



fimalgoritmo