algoritmo "primos"

procedimento imprimir_primos(quantidade: inteiro)

var
    indice, contador_primo, num_div: inteiro
    primeiro_primo: logico
inicio

    escreva("Numeros primos: [")
    indice <- 0
    contador_primo <- 0
    primeiro_primo <- verdadeiro
    
    //faz um loop em todos valores do vetor
    para indice de 1 ate quantidade faca
    

        num_div <- 0 

        //numero primo deve ser > que 0, divisivel somente por 1 e por ele mesmo
        se vValores[indice] > 0 entao

           se (vValores[indice] = 2) ou (vValores[indice] % 2 = 1) entao//somente o 2 é par nos numeros impares, se o numero é par ja sabemos que nao é primo



        
              para contador_primo de 1 ate vValores[indice]-1  faca //-1 pois qualquer numero divido por ele mesmo é 1, ou seja, é gasto de recurso(mesmo que pouco) percorrer ele
                   //escreval("cont", contador_primo)
                   se vValores[indice] % contador_primo = 0 entao
                      num_div <- num_div + 1

                      se num_div > 1 entao
                         interrompa   //se tem mais de 1 divisivel ja nao é primo, nao tem porque continuar
                      fimse

                   fimse
              fimpara


              //verifica quantas vezes o numero foi divido e deu valor exato
              //2 pois um numero primo so pode ser divisivel por 1 e por ele mesmo(2 divisoes possiveis)
              se num_div = 1 entao
                 //logica basica para que imprima de forma bonita; [a, b, c, d, ..., z]
                 se primeiro_primo entao
                      primeiro_primo <- falso
                      escreva(vValores[indice])
                 senao
                      escreva(", ", vValores[indice])
                 fimse
              fimse
           fimse

       fimse
    fimpara
    
    escreval(" ]")
    

fimprocedimento



var

vValores: vetor[1..100] de inteiro
i, quantidade_valores: inteiro


inicio

//pergunta quantos valores o usuario quer testar e depois pede valor a valor
escreval("Digite a quantidade de valores que voce gostaria de verificar se são primos: ")
leia(quantidade_valores)
para i de 1 ate quantidade_valores faca
     escreval("Digite o valor ", i, " : ")
     leia(vValores[i])

fimpara


//mostra os resultados
escreval("|---------------------------| Resultados |---------------------------|" )
imprimir_primos(quantidade_valores)


fimalgoritmo