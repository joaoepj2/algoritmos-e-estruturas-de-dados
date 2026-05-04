Algoritmo "verifica_idade"
// Disciplina   : [Algoritmos e estrutura de dados]
// Professor   : João Eurípedes Pereira Júnior
// Descrição   : Pergunta idade do usuário e diz se o mesmo possui idade para beber ou não
// Autor(a)    : Gabriela Martins Baracho
// Data atual  : 04/05/2026
Var
// Seção de Declarações das variáveis 
   idades: vetor [0..4] de inteiro
   i: inteiro
   funcao podeBeber(idade: inteiro): caractere
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
  se idade >= 18 entao
      retorne "Pode beber"
   senao
      retorne "Não pode beber"
   fimse
fimfuncao

Inicio

   // Entrada de dados
   para i de 0 ate 4 faca
      escreva("Digite a idade da pessoa ", i + 1, ": ")
      leia(idades[i])
   fimpara

   escreval("") // linha em branco

   // Processamento e saída
   para i de 0 ate 4 faca
      escreval("Pessoa ", i + 1, ": ", podeBeber(idades[i]))
   fimpara

Fimalgoritmo