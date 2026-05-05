algoritmo "Trabalho_Algoritmos"
// Lembrete: salvar este arquivo com o seu RA. Ex: 7305720.alg [cite: 6]

var
   // vetores pedidos no trabalho [cite: 7]
   nomeAluno: vetor[1..3] de caractere
   mediaFinal: vetor[1..3] de real
   i: inteiro
   n1, n2: real

// funcao para somar as notas e calcular a media das 2 provas [cite: 7]
funcao fazMedia(a, b: real): real
var
   soma, resultado: real
inicio
   // Primeiro soma as notas, depois divide por 2
   soma <- a + b
   resultado <- soma / 2
   retorne resultado
fimfuncao

inicio
   escreval("--- Sistema de Notas (0 a 100) ---")
   escreval("Informe os dados pedidos abaixo:")
   escreval("")

   // laco de repeticao para ler as notas dos 3 alunos [cite: 7]
   para i de 1 ate 3 faca
      escreval("Aluno ", i, ":")
      escreva("Qual o nome do aluno? ")
      leia(nomeAluno[i])

      escreva("Digite a nota da prova 1 (0 a 100): ")
      leia(n1)

      escreva("Digite a nota da prova 2 (0 a 100): ")
      leia(n2)

      // chamando a funcao e guardando no vetor
      mediaFinal[i] <- fazMedia(n1, n2)
      escreval("")
   fimpara

   limpatela
   escreval("===============================")
   escreval("       RESULTADO FINAL         ")
   escreval("===============================")

   // processando e mostrando na tela quem passou e reprovou
   para i de 1 ate 3 faca
      escreva("O aluno ", nomeAluno[i], " teve media ", mediaFinal[i])

      // Como a nota e de 0 a 100, a media para passar e 60
      se (mediaFinal[i] >= 60) entao
         escreval(" -> APROVADO!")
      senao
         escreval(" -> REPROVADO!")
      fimse
   fimpara

fimalgoritmo







Fimalgoritmo