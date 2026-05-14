algoritmo "Calculadora de Notas"
Var
  // Declaração das variáveis


   medias     : vetor[1..5] de real
   nomes      : vetor[1..5] de caractere
   qtdAlunos  : inteiro
   i          : inteiro
   nota1      : real
   nota2      : real
   nota3      : real
   somaGeral  : real
   mediaGeral : real

Inicio


// Procedimento: exibe a situação de um aluno
   procedimento exibirSituacao(nome: caractere; media: real)
inicio
      escreval("   Aluno: ", nome)
   escreval("   Media: ", media:5:2)
   se media >= 7.0 entao
   escreval("   Situacao: APROVADO")
   senao
   se media >= 5.0 entao
   escreval("   Situacao: RECUPERACAO")
   senao
   escreval("   Situacao: REPROVADO")
   fimse
   fimse
   escreval("---")
   fimprocedimento

// Início do programa principal
   escreval("========================================")
   escreval("     SISTEMA DE NOTAS - TURMA 2025    ")
   escreval("========================================")
   escreval("")
   escreval("Este programa calcula a media de cada aluno")
   escreval("a partir de 3 notas (0 a 10) e exibe a situacao.")
   escreval("")

// Validação: quantidade de alunos entre 1 e 5
repita
   escreval("Quantos alunos deseja cadastrar? (1 a 5):")
   leia(qtdAlunos)
   se (qtdAlunos < 1) ou (qtdAlunos > 5) entao
   escreval("  [ERRO] Informe um valor entre 1 e 5.")
   fimse
   ate (qtdAlunos >= 1) e (qtdAlunos <= 5)
   escreval("")
   escreval("------------------------------------------")
   escreval("  CADASTRO DE ALUNOS")
   escreval("------------------------------------------")

   somaGeral := 0

// -- Estrutura de repetição: coleta os dados
  para i de 1 ate qtdAlunos faca

      escreval("")
      escreval("[ Aluno ", i, " de ", qtdAlunos, " ]")
      escreva("  Nome do aluno: ")
      leia(nomes[i])

      // Nota 1
      repita
         escreva("  Nota 1 (0 a 10): ")
         leia(nota1)
         se (nota1 < 0) ou (nota1 > 10) entao
            escreval("  [ERRO] Nota deve ser entre 0 e 10.")
         fimse
      ate (nota1 >= 0) e (nota1 <= 10)

      // Nota 2
      repita
         escreva("  Nota 2 (0 a 10): ")
         leia(nota2)
         se (nota2 < 0) ou (nota2 > 10) entao
            escreval("  [ERRO] Nota deve ser entre 0 e 10.")
         fimse
      ate (nota2 >= 0) e (nota2 <= 10)

      // Nota 3
      repita
         escreva("  Nota 3 (0 a 10): ")
         leia(nota3)
         se (nota3 < 0) ou (nota3 > 10) entao
            escreval("  [ERRO] Nota deve ser entre 0 e 10.")
         fimse
      ate (nota3 >= 0) e (nota3 <= 10)


      // Calcula e armazena a média no vetor
      medias[i] := (nota1 + nota2 + nota3) / 3
      somaGeral := somaGeral + medias[i]

   fimpara

// -- Exibição dos resultados

   escreval("")
   escreval("==========================================")
   escreval("  RESULTADO FINAL")
   escreval("==========================================")
   escreval("")

   para i de 1 ate qtdAlunos faca
      exibirSituacao(nomes[i], medias[i])
   fimpara

   // Media geral da turma
   mediaGeral := somaGeral / qtdAlunos

   escreval("")
   escreval("  Media geral da turma: ", mediaGeral:5:2)

   se mediaGeral >= 7.0 entao
      escreval("  Status da turma: TURMA APROVADA")
   senao
      escreval("  Status da turma: TURMA NECESSITA ATENCAO")
   fimse

   escreval("")
   escreval("==========================================")
   escreval("  Programa encerrado. Bons estudos!")
   escreval("==========================================")



fimalgoritmo