algoritmo "Controle de Notas"
// Disciplina  : Algoritmos e Estrutura de Dados
// Descrição   : Armazena notas em um vetor e calcula a média
// Autor(a)    : Seu Nome: João Pedro da Silva Pereira (RA: 5178828)

var
   nomes: vetor [1..5] de caractere
   notas: vetor [1..5] de real
   i: inteiro
   mediaTurma: real

funcao calcularMedia(): real
var
   soma: real
   j: inteiro
inicio
   soma <- 0
   para j de 1 ate 5 faca
      soma <- soma + notas[j]
   fimpara
   retorne soma / 5
fimfuncao

inicio
   escreval("--- SISTEMA DE NOTAS ESCOLARES ---")
   escreval("Por favor, insira os dados de 5 alunos.")
   escreval("")

   para i de 1 ate 5 faca
      escreva("Digite o nome do aluno ", i, ": ")
      leia(nomes[i])
      escreva("Digite a nota do aluno ", i, ": ")
      leia(notas[i])
   fimpara

   mediaTurma <- calcularMedia()

   escreval("")
   escreval("--- RESULTADO FINAL ---")
   escreval("Média da Turma: ", mediaTurma:2:1)
   escreval("-----------------------")
   
   para i de 1 ate 5 faca
      se (notas[i] >= 6) entao
         escreval("Aluno: ", nomes[i], " | Nota: ", notas[i], " [APROVADO]")
      senao
         escreval("Aluno: ", nomes[i], " | Nota: ", notas[i], " [REPROVADO]")
      fimse
   fimpara
fimalgoritmo
