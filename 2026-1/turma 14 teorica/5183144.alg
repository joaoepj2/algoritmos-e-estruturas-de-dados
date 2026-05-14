Algoritmo "5183144"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/05/2026
Var
// Seção de Declarações das variáveis 
  precisoes: vetor [1..5] de real
  i: inteiro
  mediaFinal: real
  
  //funçao para calcular a media (cumpre o requsito de subprograma)
  funcao calcularMedia (p: vetor [1..5] de real): real
  
  var
  soma: real
  j: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
  soma <- 0
  para j de 1 ate 5 faca
     soma <- soma + p[j]
  fimpara
  retorne soma/5
  fimfuncao
  
  //entrada de dados com estrutura de repetiçao
  para i de 1 ate 5 faca
  escreva ("digite a precisao do modelo" , i, ": ")
  leia ( precisoes[i] )
  fimpara
  
  //processamento
  mediaFinal <- calcularMedia(precisoes)
  
  //saida de resultados
  escreval ("----------------------")
  escreval ("a media de precisao é: ", mediaFinal )
  escreval ("modelos dos desempenho acima da media")

  para i de 1 ate 5 faca
  se (precisoes[i] > mediaFinal) entao
     escreval ("- madelo ", i,": ", precisoes[i])
     fimse
     fimpara
     

Fimalgoritmo
