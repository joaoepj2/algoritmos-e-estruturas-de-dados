algoritmo "caixa_eletronico"

var
   saldo, valor: real
   opcao: inteiro

inicio
   saldo <- 1000
   opcao <- 0

   enquanto opcao <> 4 faca
      escreval("===== CAIXA ELETRONICO =====")
      escreval("1 - Ver saldo")
      escreval("2 - Depositar")
      escreval("3 - Sacar")
      escreval("4 - Sair")
      escreva("Escolha uma opcao: ")
      leia(opcao)

      se opcao = 1 entao
         escreval("Seu saldo e: R$", saldo)
      fimse

      se opcao = 2 entao
         escreva("Digite o valor para depositar: ")
         leia(valor)
         saldo <- saldo + valor
         escreval("Deposito realizado!")
      fimse

      se opcao = 3 entao
         escreva("Digite o valor para sacar: ")
         leia(valor)

         se valor > saldo entao
            escreval("Saldo insuficiente!")
         senao
            saldo <- saldo - valor
            escreval("Saque realizado!")
         fimse


      fimse

      se opcao > 4  entao
         escreval("Opcao invalida!")
      fimse

       se opcao < 1  entao
         escreval("Opcao invalida!")
      fimse


   fimenquanto

   escreval("Obrigado por usar o caixa eletronico!")

fimalgoritmo