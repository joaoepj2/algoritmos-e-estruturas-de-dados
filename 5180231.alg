

algoritmo "BoletimEscolar"

var
   notas    : vetor[1..4] de real
   media    : real
   nome     : caractere
   i        : inteiro
   continuar: caractere


funcao calcularMedia(v: vetor[1..4] de real): real
var
   soma: real
   j   : inteiro
inicio
   soma <- 0
   para j de 1 ate 4 faca
      soma <- soma + v[j]
   fimpara
   retorne soma / 4
fimfuncao


procedimento exibirResultado(n: caractere; m: real)
inicio
   escreval("----------------------------------------")
   escreval("Aluno  : ", n)
   escreval("Média  : ", m:5:2)
   se m >= 7.0 entao
      escreval("Situação: APROVADO(A)")
   senao
      se m >= 5.0 entao
         escreval("Situação: RECUPERAÇÃO")
      senao
         escreval("Situação: REPROVADO(A)")
      fimse
   fimse
   escreval("----------------------------------------")
fimprocedimento


inicio
   escreval("===== SISTEMA DE BOLETIM ESCOLAR =====")
   escreval()

   continuar <- "S"

   enquanto (continuar = "S") ou (continuar = "s") faca

      escreval("Informe o nome do aluno:")
      leia(nome)

      escreval()
      escreval("Informe as 4 notas (de 0.0 a 10.0):")

      para i de 1 ate 4 faca
         escreva("  Nota do bimestre ", i, ": ")
         leia(notas[i])
         enquanto (notas[i] < 0) ou (notas[i] > 10) faca
            escreval("  Nota invalida! Digite um valor entre 0 e 10.")
            escreva("  Nota do bimestre ", i, ": ")
            leia(notas[i])
         fimenquanto
      fimpara

      escreval()
      media <- calcularMedia(notas)
      exibirResultado(nome, media)
      escreval()

      escreva("Cadastrar outro aluno? (S/N): ")
      leia(continuar)
      escreval()

   fimenquanto

   escreval("Programa encerrado. Ate logo!")

fimalgoritmo