algoritmo "5182349"
// Lembre-se de salvar o arquivo com o seu RA. Exemplo: 7305720.alg

var
   // Declaração do vetor para armazenar as notas
   notas: vetor[1..5] de real
   i: inteiro
   soma, mediaFinal: real

// Declaração da função para processar os dados (calcular a média)
funcao calcularMedia(totalSoma: real; quantidade: inteiro): real
inicio
   retorne totalSoma / quantidade
fimfuncao

inicio
   soma <- 0

   // Informando ao usuário quais dados ele deve fornecer
   escreval("--- SISTEMA DE CÁLCULO DE MÉDIA ---")
   escreval("Por favor, forneça as notas finais de 5 alunos.")
   escreval("-----------------------------------")

   // Estrutura de repetição para ler as notas e preencher o vetor
   para i de 1 ate 5 faca
      // Sistema de verificação: garante que a nota esteja entre 0 e 10
      repita
         escreva("Digite a nota do aluno ", i, " (entre 0 e 10): ")
         leia(notas[i])
         
         se (notas[i] < 0) ou (notas[i] > 10) entao
            escreval("Erro: Nota inválida! A nota deve estar entre 0 e 10.")
         fimse
      ate (notas[i] >= 0) e (notas[i] <= 10)

      soma <- soma + notas[i] // Processamento matemático base
   fimpara

   // Processamento utilizando a função criada
   mediaFinal <- calcularMedia(soma, 5)

   // Apresentando o resultado final
   escreval("")
   escreval("--- RESULTADO DO PROCESSAMENTO ---")
   escreval("A média geral da turma é: ", mediaFinal)
   escreval("-----------------------------------")

   escreval("Relação de notas registradas:")
   para i de 1 ate 5 faca
      escreval("Aluno ", i, " obteve nota: ", notas[i])
   fimpara

fimalgoritmo