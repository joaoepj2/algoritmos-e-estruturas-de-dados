Algoritmo "Controle de gastos"

Var
precos: vetor[1..10] de real
total: real
i: inteiro
procedimento VerificarEstoque (v:real)
Inicio
escreval("-----Processamento do estoque-----")
se (v>1000)entao
escreval ("Valor fora do limite de gastos")
senao
escreval("Valor dentro do limite de gastos")
fimse
escreval ("---------------------------------")
fimprocedimento

Inicio
total<-0
escreval ("CONTROLE DE VALORES DE COMPRAS DE PRODUTOS PRO ESTOQUE")
escreval ("Por favor, informe o valor unitário de 10 produtos diferentes.")

para i de 1 ate 10 faca
escreva("Preço do produto ", i, ": R$")
leia (precos[i])
total <- total+precos[i]
fimpara

escreval ("")
escreval("O valor total desse lote de produtos é: R$ ", total:2:2)
Verificarestoque(total)


Fimalgoritmo