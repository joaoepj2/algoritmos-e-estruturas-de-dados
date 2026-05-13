Algoritmo "CalculadoraDeMedias"

//{ Programa que calcula a média de N alunos utilizando vetor,
 // procedimento e estrutura de repetição.
  //Requisitos atendidos:
   //- Vetor: armazena as notas dos alunos
    //- Procedimento: ExibirResultado (exibe situação de cada aluno)
   // - Estrutura de repetição: Para...FimPara (leitura e processamento) }
   
Var

 notas     : vetor[1..10] de real
   i, qtd    : inteiro
   soma, media : real
procedimento ExibirResultado(aluno: inteiro; nota: real)

Inicio

      Escreval("  Aluno ", aluno, ": Nota = ", nota:5:2, " -> ")
   se nota >= 6.0 entao
      Escreval("APROVADO")
   senao
      Escreval("REPROVADO")
   fimse
fimprocedimento

 inicio

 Escreval("============================================")
 Escreval("     CALCULADORA DE MEDIAS DE ALUNOS")
 Escreval("============================================")
 Escreval()

 Escreva("Quantos alunos deseja cadastrar? (1 a 10): ")
   Leia(qtd)
   
 enquanto (qtd < 1) ou (qtd > 10) faca
      Escreval("Valor invalido! Digite um numero entre 1 e 10.")
      Escreva("Quantos alunos deseja cadastrar? (1 a 10): ")
      Leia(qtd)
   fimenquanto
   
 Escreval()
   Escreval("--- Informe as notas (de 0.0 a 10.0) ---")
   Escreval()

 soma <- 0

para i de 1 ate qtd faca
      Escreva("Nota do aluno ", i, ": ")
      Leia(notas[i])

      enquanto (notas[i] < 0) ou (notas[i] > 10) faca
         Escreval("Nota invalida! Digite um valor entre 0.0 e 10.0.")
         Escreva("Nota do aluno ", i, ": ")
         Leia(notas[i])
      fimenquanto

  soma <- soma + notas[i]
   fimpara

   Escreval()
   Escreval("============================================")
   Escreval("           RESULTADOS INDIVIDUAIS")
   Escreval("============================================")

   { --- Segunda repetição: exibe resultado via procedimento --- }
   para i de 1 ate qtd faca
      ExibirResultado(i, notas[i])
   fimpara

   media <- soma / qtd

Escreval()
   Escreval("============================================")
   Escreva("  Media geral da turma: ")
   Escreval(media:5:2)

   se media >= 6.0 entao
      Escreval("  Situacao da turma: BOA PERFORMANCE!")
   senao
      se media >= 4.0 entao
         Escreval("  Situacao da turma: ATENCAO NECESSARIA.")
      senao
         Escreval("  Situacao da turma: SITUACAO CRITICA!")
      fimse
   fimse
   Escreval("============================================")


Fimalgoritmo