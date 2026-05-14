Algoritmo "5181831"
// Descrição   : O programa pede nome e nota dos alunos e faz uma média simples ou uma média ponderada.
// Autor(a)    : Maria Clara Matos Martins
// Data atual  : 29/04/2026
Var
   // Seção de Declarações das variáveis
   nomeAlunos: vetor[1..5] de caractere
   notaAlunos: vetor[1..5] de real
   pesos: vetor[1..5] de inteiro
   somaNotas, somaPesos, resultado: real
   resp: caractere
   i: inteiro

funcao mediaSimples(soma: real): real
inicio
   retorne soma / 5
fimfuncao

funcao mediaPonderada(vTotal, pTotal: real): real
inicio
   se pTotal = 0 entao
      retorne 0
   senao
      retorne vTotal / pTotal
   fimse
fimfuncao

Inicio
   somaNotas <- 0
   somaPesos <- 0
   escreva("As notas possuírão pesos? (s/n)")
   leia(resp)
   para i de 1 ate 5 faca
      escreval("--------------------")
      escreva("Nome do ", i, "° ", "aluno: ")
      leia(nomeAlunos[i])
      escreva("Nota do ", i, "° ", "aluno: ")
      leia(notaAlunos[i])

      se(resp = "s")entao
         escreva("Peso da ", i, "° ", "nota: ")
         leia(pesos[i])
         somaPesos <- somaPesos + pesos[i]
         somaNotas <- somaNotas + (notaAlunos[i] * pesos[i])
      senao
         somaNotas <- somaNotas + notaAlunos[i]
      fimse
   fimpara

   escreval("--------------------")
   para i de 1 ate 5 faca
      se (resp = "s") entao
         escreval(i, "° aluno: ", nomeAlunos[i], ", nota: ", notaAlunos[i], ", peso: ", pesos[i])
      senao
         escreval(i, "° aluno: ", nomeAlunos[i], ", nota: ", notaAlunos[i])
      fimse
   fimpara
   escreval("--------------------")
   se (resp = "s") entao
      resultado <- mediaPonderada(somaNotas, somaPesos)
      escreval("Media Ponderada = ", resultado:2:2)
   senao
      resultado <- mediaSimples(somaNotas)
      escreval("Media Simples = ", resultado:2:2)
   fimse
Fimalgoritmo