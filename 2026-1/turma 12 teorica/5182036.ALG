algoritmo "Aprovados"
// Disciplina   : [Algoritmo e estrutura de dados] 
// Professor   : Joao


funcao calcularMedia() : real

var

mediaFinal, soma_de_tudo: real

aluno: inteiro
inicio

  soma_de_tudo <- 0
  mediaFinal <- 0
  para aluno de 0 ate numAlunos faca
    soma_de_tudo <- soma_de_tudo + notaAlunos[aluno]
  fimpara

  mediaFinal <- soma_de_tudo / numAlunos
  retorne mediaFinal

fimfuncao

// prenche o restante do texto com espaço até dar o numero da largura pedido, por exemplo: "ABC" e voce quer preencher ate a largura 5, fica "ABC  ", e escreve no terminal
procedimento padding(texto: caractere; largura: inteiro)

var
spaces, j: inteiro
buffer: caractere

inicio
buffer <- texto
spaces <- largura - compr(texto)

para j de 1 ate spaces faca
  buffer <- buffer + " "
fimpara

escreva(buffer)

fimprocedimento

// desenha uma linha de tamanho N com caractere passado, util para fazer por exemplo ------------- de tamanho indefinido de forma facil
procedimento desenharLinha(tamanho: inteiro; letra: caracter)

var
t: inteiro
bufferDesenho: caractere

inicio

bufferDesenho <- ""

para t de 1 ate tamanho faca
  bufferDesenho <- bufferDesenho + letra
fimpara

escreval(bufferDesenho)


fimprocedimento



var
  nomeAlunos: vetor[0..100] de caractere
  notaAlunos: vetor[0..100] de real
  numAlunos, i, maiorNome: inteiro
  media: real
  bufferTable: caractere

inicio

  escreval("Digite a quantidade de alunos: ")
  leia(numAlunos)

  //coleta os dados dos alunos e verifica o maior nome e salva seu tamanho(é usado isso para fazer a tabela com os espaçamentos todos corretos)

  para i de 0 ate (numAlunos-1) faca

    escreval("Digite o nome do aluno ", i+1, ":")
    leia(nomeAlunos[i])

    se compr(nomeAlunos[i]) > maiorNome entao
      maiorNome <- compr(nomeAlunos[i])
    fimse

    escreval("Digite o nota do aluno ", i+1, ":")
    leia(notaAlunos[i])
  fimpara

  i <- 0


// limpatela()

// monta a tabela usando logica de contagem de caracteres e quebra de linhas
desenharLinha(maiorNome+48, "-") //desenha a linha do topo da tabela

//faz o cabeçalho com suas colunas
escreva("| ")
padding("NOME", maiorNome+7)
escreval(" | NOTA         | SITUACAO            |")

//linha que separa o cabeçalho das linhas
desenharLinha(maiorNome+48, "-")

  para i de 0 ate (numAlunos-1) faca

    bufferTable <- "" + NumPCarac(i+1) + " - " + nomeAlunos[i]

    escreva("| ")
    padding(bufferTable, maiorNome + 7)

    bufferTable <- "" + NumPCarac(notaAlunos[i])
    escreva(" | Nota: ")
    padding(bufferTable, 6)
    escreva(" | Situacao: ")

    //verifica a media do aluno, se for abaixo de 70 ele esta reprovado, ao contrario, aprovado
    se notaAlunos[i] >= 70.0 entao
      //MudaCor("VERDE", "FRENTE")    //ou o meu visualg esta bugado, ou so nao funciona o MudaCor mesmo
      padding("Aprovado", 9) //nao quebrar a tabela
    senao
      //MudaCor("VERMELHO", "FRENTE") //ou o meu visualg esta bugado, ou so nao funciona o MudaCor mesmo
      escreva("Reprovado")
    fimse
    //MudaCor("BRANCO", "FRENTE")    //ou o meu visualg esta bugado, ou so nao funciona o MudaCor mesmo

    escreval(" |")
  fimpara


  desenharLinha(maiorNome+48, "-") //fim tabela

  //mostra a media da turma
  media <- calcularMedia()
  escreval("Media da turma: ", media)


fimalgoritmo
