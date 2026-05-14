Algoritmo "RA5179003João.V.C.P"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
//usando o escolha e o se ver quais condicionais faz sentido
//aluno joao vitor costa pedrosa trabalho do professor joao de algoritmo usando vetor,
//procedimento e estrutura de repetição
Var
   nome: vetor[1..3] de caracter
   medias: vetor[1..3] de real
   i: inteiro
   total, n1, n2: real

// ============================================================
// REQUISITO: PROCEDIMENTO
// ============================================================
Procedimento ExibirCabecalho()
Inicio
   Escreval("---------------------------------")
   Escreval("SISTEMAS DE AVALIAÇÕES DOS ALUNOS")
   Escreval("---------------------------------")
FimProcedimento

Inicio
   // Chamando o procedimento obrigatório
   ExibirCabecalho()

   para i de 1 ate 3 faca
      escreval("Digite o nome do aluno ", i, ": ")
      leia(nome[i])

      Escreval("Coloque a nota de ", nome[i], " da primeira prova:")
      leia(n1)
      Escreval("Coloque a nota de ", nome[i], " da segunda prova:")
      leia(n2)

      medias[i] <- (n1 + n2) / 2
      escreval("Resultado de ", nome[i], ": ", medias[i])
      escreval("")
   fimpara
Escreval("---------------------------")
Escreval("média da sala")
Escreval("---------------------------")
// Outra repetição para mostrar os resultados processados
   para i de 1 ate 3 faca
      escreva("Aluno: ", nome[i], " | Média: ", medias[i])
      // Usando o SE para dar o veredito (processamento de texto)
      se (medias[i] >= 7) entao
         escreval(" -> APROVADO")
      senao
         escreval(" -> REPROVADO")
      fimse
   fimpara
Escreval("aqui está a média da turma")
total<-((medias[1]+medias[2]+medias[3])/3)
Escreval(total)


Fimalgoritmo