Algoritmo "MediaNotas"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/05/2026
Var
   // Seção de Declarações das variáveis
   notas: vetor[1..5] de real
   i: inteiro
   media: real
procedimento MostrarResultado(m:real)
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("A média da turma foi: ", m)
   se m >= 6 entao
      escreval("Resultado geral: turma aprovada.")
   senao
      escreval("Resultado geral: turma abaixo da média.")
   fimse
fimprocedimento
inicio
   media <- 0
   escreval("Informe as 5 notas dos alunos: ")
   para i de 1 ate 5 faca
      escreva("Nota do aluno ", i, ": ")
      leia(notas[i])
      media<- media+notas[i]
   fimpara
   media<- media/5
   MostrarResultado(media)


Fimalgoritmo