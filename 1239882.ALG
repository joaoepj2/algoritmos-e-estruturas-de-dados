algoritmo "1239882"
// Função : Sistema de Cálculo de Média Escolar
// Autor : Beatriz Oliveira
// Data : 05/05/2026

var
   // Declaração do vetor para armazenar as 4 notas
   notas: vetor[1..4] de real
   i: inteiro
   soma, mediaFinal: real
   resultado: caractere

// Declaração da Função que processa a média e retorna o status
funcao VerificarStatus(media: real): caractere
inicio
   se (media >= 6.0) entao
      retorne "APROVADO"
   senao
      retorne "REPROVADO"
   fimse
fimfuncao

inicio
   escreval("--- Sistema de Cálculo de Notas ---")
   escreval("Você precisará fornecer as 4 notas bimestrais do aluno.")
   escreval("-----------------------------------")

   soma <- 0

   // Estrutura de repetição para solicitar os dados ao usuário
   para i de 1 ate 4 faca
      escreva("Digite a ", i, "ª nota (0 a 10): ")
      leia(notas[i]) // Armazenando a informação no vetor

      // Processamento matemático (somando as notas)
      soma <- soma + notas[i]
   fimpara

   // Processamento: Cálculo da média
   mediaFinal <- soma / 4

   // Chamada da função para processamento de texto (Status)
   resultado <- VerificarStatus(mediaFinal)

   // Apresentação dos resultados para o usuário
   escreval("")
   escreval("--- Resultado Final ---")
   escreval("Notas informadas: ", notas[1]:2:1, " | ", notas[2]:2:1, " | ", notas[3]:2:1, " | ", notas[4]:2:1)
   escreval("Média Final......: ", mediaFinal:2:1)
   escreval("Status do Aluno..: ", resultado)
   escreval("-----------------------")

fimalgoritmo