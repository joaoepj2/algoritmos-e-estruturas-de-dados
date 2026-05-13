algoritmo "Gerador de E-mails Acadêmicos"
// Disciplina  : Algoritmos e Estrutura de Dados
// Professor   : João
// Aluno: Bianka Santos
// RA: 5178566

var
   // VETOR: Para armazenar os nomes dos 3 alunos
   nomes: vetor [1..3] de caractere
   i: inteiro

// PROCEDIMENTO: Processa o nome e cria o e-mail
procedimento criarEmail(nomeAluno: caractere)
var
   emailGerado: caractere
inicio
   // PROCESSAMENTO: Junta o nome com o domínio da faculdade
   emailGerado <- nomeAluno + "@uniube.edu.br"

   // RESULTADO: Apresenta a informação processada
   escreval("Nome: ", nomeAluno)
   escreval("E-mail: ", emailGerado)
   escreval("---------------------------------------")
fimprocedimento

inicio
   escreval("=== GERADOR DE E-MAILS DA TURMA ===")
   escreval("Por favor, digite o nome de 3 alunos para gerar os e-mails.")
   escreval("")

   // ESTRUTURA DE REPETIÇÃO: Coleta os nomes[cite: 1]
   para i de 1 ate 3 faca
      escreva("Digite o nome do aluno ", i, ": ")
      leia(nomes[i])
   fimpara

   escreval("")
   escreval("=== LISTA DE E-MAILS GERADOS ===")

   // REPETIÇÃO: Percorre o vetor e chama o procedimento[cite: 1]
   para i de 1 ate 3 faca
      // Chamada do procedimento passando o dado do vetor[cite: 1]
      criarEmail(nomes[i])
   fimpara

fimalgoritmo