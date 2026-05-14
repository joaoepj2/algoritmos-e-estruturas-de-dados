Algoritmo "5183167"
// Disciplina  : [ALGORITMOS E ESTRUTURAS DE DADOS]
// Professor   : JOAO EURIPEDES PEREIRA JUNIOR & MARCUS ARTIAGA COLANTONI
// Descrição   : Codigo feito para verificar se o aluno é ou não aprovado
// Autor(a)    : Fernando Freddi de Lima
// Data atual  : 03/05/2026
Var
   n, n1, i, j: inteiro
   ver : real
   // Correção na sintaxe dos vetores (uso de : e ..)
   nome : vetor[1..100] de caractere
   notas : vetor[1..100] de real
   total : vetor[1..100] de real
   final : vetor[1..100] de caractere
   busca : logico

// Função declarada antes do Inicio
funcao Res(a, b : real) : caractere
inicio
   se(a >= (b * 0.9)) entao
      retorne "Aprovado com conceito A"
   senao
      se(a >= (b * 0.6)) entao
         retorne "Aprovado com conceito B"
      senao
         retorne "Reprovado"
      fimse
   fimse
fimfuncao

Inicio
   escreval("Quantos alunos as notas serão verificadas (máx: 100)?")
   leia(n)
   se (n > 100) entao
      n <- 100
   fimse

   escreval("Quantas notas serão lidas por aluno?")
   leia(n1)

   para i de 1 ate n faca
      escreva("Informe o nome do aluno ", i, ": ")
      leia(nome[i])

      // Zerando os acumuladores para cada aluno
      notas[i] <- 0
      total[i] <- 0

      para j de 1 ate n1 faca
         escreva("Qual o valor MÁXIMO da nota ", j, "? ")
         leia(ver)
         total[i] <- total[i] + ver

         escreva("Quanto o aluno ", nome[i], " tirou na nota ", j, "? ")
         leia(ver)
         notas[i] <- notas[i] + ver
      fimpara
   fimpara

   escreval("--- RESULTADOS GERAIS ---")
   para i de 1 ate n faca
      final[i] <- Res(notas[i], total[i])
      escreval("O aluno ", nome[i], " foi ", final[i], " com nota ", notas[i], " de ", total[i])
   fimpara

   // Verificação individual
   busca <- verdadeiro
   enquanto busca faca
      escreval("")
      escreva("Escolha o número de um aluno (1 a ", n, ") para detalhes ou 0 para sair: ")
      leia(i)

      se (i = 0) entao
         busca <- falso
         escreval("Saindo do programa...")
      senao
         se (i >= 1) e (i <= n) entao
            escreval(">> Aluno: ", nome[i])
            escreval(">> Total acumulado: ", notas[i], " de ", total[i])
            escreval(">> Situação: ", final[i])
         senao
            escreval("Opção inválida!")
         fimse
      fimse
   fimenquanto

Fimalgoritmo