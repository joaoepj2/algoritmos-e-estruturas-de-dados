algoritmo "calculador de notas"

Var

media : real
notas : vetor[1..9] de real
opcao : inteiro
mediasoma: real
op1, op2, i: inteiro
resultado: real

funcao soma(a: real; b: real): real
inicio
   retorne a + b
fimfuncao

funcao subtracao(a: real; b: real): real
inicio
   retorne a - b
fimfuncao

funcao multiplicacao(a: real; b: real): real
inicio
   retorne a * b
fimfuncao

Inicio

escreval("ola professor(a) seja bem vindo a seu calculador de médias")
escreval("lembrando que nesse sistema só pode se calcular a media de 9 alunos, tendo q ser digitada sua nota final")


para i de 1 ate 9 faca
   escreval("escreva a nota do aluno ", i)
   leia(notas[i])
fimpara

para i de 1 ate 9 faca
   escreval("essa foi a nota do aluno", i, ": ", notas[i])
fimpara

escreval ("agora escreva o codigo de qual aluno vc quer calcular a media:")

escreval("sendo 1 para aluno 1")
escreval("sendo 2 para aluno 2")
escreval("sendo 3 para aluno 3")
escreval("sendo 4 para aluno 4")
escreval("sendo 5 para aluno 5")
escreval("sendo 6 para aluno 6")
escreval("sendo 7 para aluno 7")
escreval("sendo 8 para aluno 8")
escreval("sendo 9 para aluno 9")

escreval("escreva o codigo aqui:")
leia (opcao)

se opcao = 1 entao
   mediasoma <- notas[1]
   media <- mediasoma / 4
   escreval ("essa foi a media do aluno 1:", media)
fimse

se opcao = 2 entao
   mediasoma <- notas[2]
   media <- mediasoma / 4
   escreval ("essa foi a media do aluno 2:", media)
fimse

se opcao = 3 entao
   mediasoma <- notas[3]
   media <- mediasoma / 4
   escreval ("essa foi a media do aluno 3:", media)
fimse

se opcao = 4 entao
   mediasoma <- notas[4]
   media <- mediasoma / 4
   escreval ("essa foi a media do aluno 4:", media)
fimse

se opcao = 5 entao
   mediasoma <- notas[5]
   media <- mediasoma / 4
   escreval ("essa foi a media do aluno 5:", media)
fimse

se opcao = 6 entao
   mediasoma <- notas[6]
   media <- mediasoma / 4
   escreval ("essa foi a media do aluno 6:", media)
fimse

se opcao = 7 entao
   mediasoma <- notas[7]
   media <- mediasoma / 4
   escreval ("essa foi a media do aluno 7:", media)
fimse

se opcao = 8 entao
   mediasoma <- notas[8]
   media <- mediasoma / 4
   escreval ("essa foi a media do aluno 8:", media)
fimse

se opcao = 9 entao
   mediasoma <- notas[9]
   media <- mediasoma / 4
   escreval ("essa foi a media do aluno 9:", media)
fimse

escreval("Agora escolha dois alunos para operar:")
leia(op1, op2)

resultado <- soma(notas[op1], notas[op2])
escreval("Soma: ", resultado)

resultado <- subtracao(notas[op1], notas[op2])
escreval("Subtracao: ", resultado)

resultado <- multiplicacao(notas[op1], notas[op2])
escreval("Multiplicacao: ", resultado)

Fimalgoritmo
