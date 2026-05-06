algoritmo "Calculadora de Notas Escolares"
var
   notas: vetor[1..5] de real
   nomes: vetor[1..5] de caractere
   i: inteiro
   soma, media: real
   opcao: caractere

funcao calcularSituacao(mediaAluno: real): caractere
var
   situacao: caractere
inicio
   se mediaAluno >= 7.0 entao
      situacao <- "APROVADO"
   senao
      se mediaAluno >= 5.0 entao
         situacao <- "RECUPERAÇÃO"
      senao
         situacao <- "REPROVADO"
      fimse
   fimse

   retorne situacao
fimfuncao

procedimento exibirCabecalho()
inicio
   escreval("=")
   escreval("   SISTEMA DE NOTAS ESCOLARES - RA: 7305720")
   escreval("=")
   escreval("")
fimprocedimento

inicio
   // Exibe o cabeçalho do programa
   exibirCabecalho()

   // Solicita os nomes e notas dos alunos
   escreval("Digite os nomes e notas de 5 alunos:")
   escreval("")

   soma <- 0

   para i de 1 ate 5 faca
      escreva("Nome do aluno ", i, ": ")
      leia(nomes[i])
      escreva("Nota do aluno ", nomes[i], " (0 a 10): ")
      leia(notas[i])

      // Validação da nota
      enquanto (notas[i] < 0) ou (notas[i] > 10) faca
         escreval("Nota inválida! Digite uma nota entre 0 e 10.")
         escreva("Nota do aluno ", nomes[i], ": ")
         leia(notas[i])
      fimenquanto

      soma <- soma + notas[i]
      escreval("")
   fimpara

   // Calcula a média da turma
   media <- soma / 5

   // Exibe os resultados
   escreval("=")
   escreval("   RESULTADOS FINAIS")
   escreval("=")
   escreval("")

   para i de 1 ate 5 faca
      escreval("Aluno: ", nomes[i])
      escreval("Nota: ", notas[i]:4:1)
      escreval("Situação: ", calcularSituacao(notas[i]))
      escreval("-------------------")
   fimpara

   escreval("")
   escreval("MÉDIA DA TURMA: ", media:4:1)
   escreval("")

   // Pergunta se o usuário quer reiniciar
   escreval("Deseja calcular novamente? (S/N)")
   leia(opcao)

   se (opcao = "S") ou (opcao = "s") entao
      limpatela
       // Reinicia o programa
   fimse

   escreval("")
   escreval("Programa encerrado. Obrigado por usar!")
fimalgoritmo