Algoritmo "media"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/05/2026
Var
// Seção de Declarações das variáveis 
   notas:vetor[1..3] de real
   i: inteiro
   media: real
   
   procedimento calcularMedia( )
   var
      soma: real
   inicio
      soma<-0
      para i de 1 ate 3 faca
      soma<-soma+notas [i]
  fimpara
      media<-soma/3
  fimprocedimento
  

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
 para i de 1 ate 3 faca
      escreva( "digite a nota¨", i,":")
      leia(notas[i])
fimpara
calcularMedia()
escreva("media:",media)


Fimalgoritmo