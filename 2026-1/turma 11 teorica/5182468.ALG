Algoritmo "5182468"

Var

   notas: vetor [1..20] de real
   media, soma: real
   nomeAluno: caractere
   i, n: inteiro

Inicio

 escreval("_______________________________")
 escreval("")
 escreval("CALCULO DA MÉDIA DAS PROVAS")
 escreval("_______________________________")
 escreval("")

   soma <- 0

   escreva("Nome do aluno(a): ")
   leia(nomeAluno)
   escreval("")

   escreva("Quantas provas foram feitas por ", nomeAluno, "?: ")
   leia(n)
   escreval("")
   
   
   //Verifica se a qtnd de provas está dentro do permitido no programa
   se n>20 entao
      escreval("O número máximo é de 20 provas!!")
      fimalgoritmo
   senao
      se n<1 entao
         escreval("Precisa haver ao menos UMA prova para calcular a média")
         fimalgoritmo
      fimse
   fimse


   //Soma das notas
   para i de 1 até n faca

      escreva("Digite a nota da prova ", i, ": ")
      leia(notas[i])
      soma<- soma + notas[i]
   fimpara



   //Calculando a média de pontos
   media<- soma/n

   //Limpa o terminal
   limpatela
   
   //Informações finais
   
   escreval("RESULTADOS")
   escreval("_______________________________________________")
   escreval("")
   
   escreval("Nome do(a) aluno(a): ", nomeAluno)
   escreval("Provas feitas: ", n, " provas")
   escreval("Médias das notas: ", media:6:1)
   
   
   escreval("_______________________________________________")


Fimalgoritmo