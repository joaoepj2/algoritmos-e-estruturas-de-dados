Algoritmo "Notas"
// Disciplina   : Algoritmo e estrutura de dados
// Professor   : Jõao Eurípedes
// Descrição   : Verificar situação de 5 alunos
// Autor(a)    : Matheus Gomes Ferreira
// Data atual  : 05/05/2026
Var

   nomes: vetor [1..5] de Caractere
   notas: vetor [1..5] de Real
   i: Inteiro
   situacao: Caractere
   
   Funcao VerificarSituacao(media: Real) : Caractere
Inicio
   Se media >= 7 Entao
      Retorne "APROVADO"
   Senao
      Retorne "REPROVADO"
   FimSe
FimFuncao

Inicio
   Escreval("--- SISTEMA DE PROCESSAMENTO ESCOLAR ---")
   Escreval("")

   Para i de 1 ate 5 faca
      Escreva("Digite o nome do ", i, "º aluno: ")
      Leia(nomes[i])
      Escreva("Digite a nota final de ", nomes[i], ": ")
      Leia(notas[i])
      Escreval("---------------------------------------")
   FimPara

   LimpaTela

   Escreval("--- RESULTADO FINAL ---")
   Escreval("NOME             | NOTA  | SITUAÇÃO")
   Escreval("---------------------------------------")


   Para i de 1 ate 5 faca

      situacao <- VerificarSituacao(notas[i])

      Escreval(nomes[i]:16, " | ", notas[i]:5:1, " | ", situacao)
   FimPara

FimAlgoritmo
