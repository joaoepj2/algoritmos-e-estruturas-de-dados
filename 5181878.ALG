Algoritmo "ValidadorDeSenha"
 função analisarsenha(s:caractere):caractere
 var
    cont, numero, simbolo, tamanho, pontos: inteiro
    caract: vetor [1..20] de caractere
    temsimbolo, temnumero: logico
 inicio
       cont <- 1
       tamanho <- compr(s)
       pontos <- 0
       numero <- 0
       simbolo <- 0
       
       //caso a senha seja maior que o valor do vetor, seu tamanho recebera 20
       se tamanho > 20 entao
          tamanho <- 20
       fimse
       
       //primeiro requisito para uma senha forte
       se tamanho >= 10 entao
          pontos <- pontos + 30
       fimse
       
       //verificação se possui numeros ou simbolos na senha
       enquanto cont <= tamanho faca
                caract [cont] <- copia(s, cont, 1)
                se (caract [cont] >= "0") e (caract [cont] <= "9") entao
                   numero <- numero + 1
                fimse
                se (caract [cont] = "@") ou (caract [cont] = ".") ou (caract [cont] = "#") entao
                   simbolo <- simbolo + 1
                fimse
                cont <- cont + 1
       fimenquanto

       //segundo requisito para uma senha forte
       se simbolo >= 1 entao
          temsimbolo <- verdadeiro
          pontos <- pontos + 35
       fimse
       
       //terceiro requisito para uma senha forte
       se numero >= 1 entao
          temnumero <- verdadeiro
          pontos <- pontos + 35
       fimse
       
       se pontos >= 100 entao
          retorne "Forte (SEGURANÇA MÁXIMA)"
       senao
            se pontos >= 60 entao
               retorne "Moderada (SEGURANÇA PODE MELHORAR)"
               senao
                     retorne "Fraca (SEGURANÇA INACEITÁVEL)"
            fimse
       fimse
 fimfunção
 
Var
   senha: caractere

Inicio
      escreval ("--------Verificador De Senha--------" )
      escreval ("Dica: Use números e símbolos (@ # ou .) para uma senha forte.")
      escreva ("Digite uma senha: ")
      leia (senha)
      escreval (" ")
      escreval ("---------Analisando senha---------")
      escreval ("Resultado: ", analisarsenha(senha))
      


Fimalgoritmo
