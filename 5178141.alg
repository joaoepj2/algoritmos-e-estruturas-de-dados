algoritmo "Calculo_Meta_Comissao"
var
   vendas_semanais: vetor [1..4] de real
   total_mensal, meta_mensal, percentual_atingido: real
   valor_comissao: real
   i: inteiro

funcao calcular_comissao(v_total, v_meta: real) : real
var
   atingimento, aux_comissao: real
inicio
   atingimento <- (v_total / v_meta) * 100
   
   se (atingimento >= 100.0) entao
      aux_comissao <- v_total * 0.05
   senao
      se (atingimento >= 80.0) entao
         aux_comissao <- v_total * 0.02
      senao
         aux_comissao <- 0.0
      fimse
   fimse
   
   retorne aux_comissao
fimfuncao

inicio
   meta_mensal <- 60000.0
   total_mensal <- 0.0
   
   escreval("=== SISTEMA DE METAS E COMISSOES ===")
   escreval("Meta do Mes: R$ 60.000,00")

   escreva("Informe as vendas da SEMANA 1: R$ ")
   leia(vendas_semanais[1])
   
   escreva("Informe as vendas da SEMANA 2: R$ ")
   leia(vendas_semanais[2])
   
   escreva("Informe as vendas da SEMANA 3: R$ ")
   leia(vendas_semanais[3])
   
   escreva("Informe as vendas da SEMANA 4: R$ ")
   leia(vendas_semanais[4])

   para i de 1 ate 4 faca
      total_mensal <- total_mensal + vendas_semanais[i]
   fimpara

   valor_comissao <- calcular_comissao(total_mensal, meta_mensal)
   percentual_atingido <- (total_mensal / meta_mensal) * 100

   escreval("--- RELATORIO FINAL ---")
   escreval("Total Vendido no Mês: R$ ", total_mensal:2:2)
   escreval("Percentual da Meta: ", percentual_atingido:2:1, "%")
   
   se (valor_comissao > 0.0) entao
      escreval("COMISSAO A RECEBER: R$ ", valor_comissao:2:2)
   senao
      escreval("SITUACAO: Meta minima nao atingida. Sem comissao.")
   fimse
fimalgoritmo