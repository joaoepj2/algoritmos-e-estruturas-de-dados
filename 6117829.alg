Algoritmo "SistemaDeNotas"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// ================================================
// Programa : Sistema de Calculo de Media de Notas
// Descricao: Le 5 notas do usuario, armazena em
//            vetor, calcula a media via funcao e
//            exibe o resultado com situacao final.
// ================================================

Var
   notas     : vetor[1..5] de real
   i         : inteiro
   media     : real
   nome      : caractere

// Funcao: calcula e retorna a media das 5 notas
Funcao CalcularMedia: real
Var
   soma : real
   j    : inteiro
Inicio
   soma <- 0
   Para j de 1 ate 5 faca
      soma <- soma + notas[j]
   FimPara
   Retorne soma / 5
FimFuncao

// Procedimento: exibe o relatorio final

Procedimento ExibirRelatorio
Var
   k : inteiro
Inicio
   Escreval("")
   Escreval("================================================")
   Escreval("               RELATORIO FINAL                 ")
   Escreval("================================================")
   Escreval("Aluno: ", nome)
   Escreval("------------------------------------------------")
   Para k de 1 ate 5 faca
      Escreval("  Nota ", k, ": ", notas[k]:0:2)
   FimPara
   Escreval("------------------------------------------------")
   Escreval("  Media Final : ", media:0:2)
   Se media >= 7.0 entao
      Escreval("  Situacao    : APROVADO(A)! Parabens!")
   Senao
      Se media >= 5.0 entao
         Escreval("  Situacao    : EM RECUPERACAO.")
      Senao
         Escreval("  Situacao    : REPROVADO(A).")
      FimSe
   FimSe
   Escreval("================================================")
FimProcedimento

// Programa Principal

Inicio
   Escreval("================================================")
   Escreval("       SISTEMA DE CALCULO DE NOTAS             ")
   Escreval("================================================")
   Escreval("")
   Escreva("Informe o nome do aluno: ")
   Leia(nome)
   Escreval("")
   Escreval("Voce devera digitar 5 notas, cada uma de 0 a 10.")
   Escreval("")

   Para i de 1 ate 5 faca
      Escreva("  Digite a nota ", i, " (0 a 10): ")
      Leia(notas[i])
      Enquanto (notas[i] < 0) ou (notas[i] > 10) faca
         Escreval("  [ERRO] Nota invalida! Digite um valor entre 0 e 10.")
         Escreva("  Digite a nota ", i, " novamente: ")
         Leia(notas[i])
      FimEnquanto
   FimPara

   media <- CalcularMedia

   ExibirRelatorio

Fimalgoritmo
