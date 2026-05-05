algoritmo "cadastro_pessoas"

var
   nomes: vetor[1..5] de caractere
   sobrenomes: vetor[1..5] de caractere
   idades: vetor[1..5] de inteiro
   i: inteiro

procedimento mostrarDados()
var
   i: inteiro
inicio
   escreval("----- DADOS CADASTRADOS -----")
   para i de 1 ate 5 faca
      escreval("Pessoa ", i, ": ", nomes[i], " ", sobrenomes[i], " - Idade: ", idades[i])
   fimpara
fimprocedimento

inicio

   para i de 1 ate 5 faca
      escreval("Cadastro da pessoa ", i)

      escreva("Nome: ")
      leia(nomes[i])

      escreva("Sobrenome: ")
      leia(sobrenomes[i])

      escreva("Idade: ")
      leia(idades[i])

   fimpara

   mostrarDados()

fimalgoritmo