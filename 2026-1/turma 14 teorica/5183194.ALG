Algoritmo "contagem_sexo_completo"

Var
   // Vetor para 4 posições e contador de controle
   sexo: vetor[1..4] de caracter
   contador: inteiro

// Procedimento que isola a lógica de contagem e exibição
Procedimento ApresentarResultados()
Var
   // Variáveis locais (só existem aqui dentro)
   h, m, j: inteiro
Inicio
   h <- 0
   m <- 0

   // Percorre o vetor e soma de acordo com o sexo
   para j de 1 ate 4 faca
      se (sexo[j] = "F") entao
         m <- m + 1
      fimse
      se (sexo[j] = "M") entao
         h <- h + 1
      fimse
   fimpara

   // Mostra os totais acumulados
   escreval("")
   escreval("--- RELATÓRIO FINAL ---")
   escreval("Total de Mulheres: ", m)
   escreval("Total de Homens:   ", h)
FimProcedimento

Inicio
   contador <- 1

   // Loop para capturar os dados das 4 pessoas
   repita
      // Loop interno para validar se a resposta é M ou F
      repita
         escreva("Informe o sexo da ", contador, "ª pessoa (M/F): ")
         leia(sexo[contador])

         // Converte para maiúsculo para evitar erro se digitar "m" ou "f"
         sexo[contador] <- Maiusc(sexo[contador])

         se (sexo[contador] <> "M") e (sexo[contador] <> "F") entao
            escreval("Entrada inválida! Digite apenas M ou F.")
         fimse
      ate (sexo[contador] = "M") ou (sexo[contador] = "F")

      contador <- contador + 1
   ate contador > 4

   // Chama o procedimento para mostrar o resultado
   ApresentarResultados()

Fimalgoritmo