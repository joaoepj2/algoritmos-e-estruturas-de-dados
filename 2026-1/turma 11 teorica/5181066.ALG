Algoritmo "2048"

Var
campo : vetor[1..4, 1..4] de inteiro       // MATRIZ DO CAMPO
bkpCampo : vetor[1..4, 1..4] de inteiro    // COPIA DA MATRIZ CAMPO
valCampo : vetor[1..4, 1..4] de caractere  // CAMPO TRADUZIDO
i : inteiro                                // LOOP DE EXIBIR CAMPO
x, y : inteiro                             // COORDENADAS
drop : inteiro                             // NUMERO ALEATORIO EM CADA RODADA
venceu : logico                            // DEFINE CONTINUIDADE DO LOOP

Inicio

// RESET DO CAMPO
para i de 1 ate 4 faca
     campo[1 , i] <- 0
     campo[2, i] <- 0
     campo[3, i] <- 0
     campo[4, i] <- 0
fimpara






// EXIBIR CAMPO DE JOGO
procedimento mostrarCampo()
inicio
     limpatela  // LIMPA TELA ANTES DE GERAR NOVO
     traduzirCampo
     i <- 0
     para i de 1 ate 4 faca
          escreva("| ", valCampo[i , 1], " ", valCampo[i , 2], " ", valCampo[i , 3], " ", valCampo[i , 4], " |")
          escreval
     fimpara
     
fimprocedimento




procedimento traduzirCampo()
var
l, c : inteiro
inicio
      para l de 1 ate 4 faca
            para c de 1 ate 4 faca
                  se campo[l, c] = 0 entao
                        valCampo[l, c] <- "•"
                  fimse
                  se campo[l, c] = 2 entao
                        valCampo[l, c] <- "1"
                  fimse
                  se campo[l, c] = 4 entao
                        valCampo[l, c] <- "2"
                  fimse
                  se campo[l, c] = 8 entao
                        valCampo[l, c] <- "3"
                  fimse
                  se campo[l, c] = 16 entao
                        valCampo[l, c] <- "4"
                  fimse
                  se campo[l, c] = 32 entao
                        valCampo[l, c] <- "5"
                  fimse
                  se campo[l, c] = 64 entao
                        valCampo[l, c] <- "6"
                  fimse
                  se campo[l, c] = 128 entao
                        valCampo[l, c] <- "7"
                  fimse
                  se campo[l, c] = 256 entao
                        valCampo[l, c] <- "8"
                  fimse
                  se campo[l, c] = 512 entao
                        valCampo[l, c] <- "9"
                  fimse
                  se campo[l, c] = 1024 entao
                        valCampo[l, c] <- "@"
                  fimse
                  se campo[l, c] = 2048 entao
                        valCampo[l, c] <- "$"
                  fimse
            fimpara
      fimpara
fimprocedimento


// BACKUP DO CAMPO
procedimento salvarCampo()
var
   l, c: inteiro
inicio
      para l de 1 ate 4 faca
            para c de 1 ate 4 faca
                  bkpCampo[l, c] <- campo[l, c]
            fimpara
      fimpara
fimprocedimento






// VE SE TEVE DIFERENCA NO CAMPO
procedimento teveMovimento()
var
l, c: inteiro
inicio
      para l de 1 ate 4 faca
            para c de 1 ate 4 faca
                  se campo[l, c] <> bkpCampo[l, c] entao
                        rodada
                        interrompa
                  fimse
            fimpara
      fimpara

      apresentaTela

fimprocedimento






// CONTROLE DO USUARIO
procedimento input()
var
botao : caractere
inicio

      repita
            // PEDIR INPUT
            escreval
            escreva("Comando: ")
            leia(botao)

            // REPETE SE NÃO FOR WASD
            se (botao <> "w") e (botao <> "a") e (botao <> "s") e (botao <> "d") entao
                  apresentaTela
            fimse
      ate (botao = "w") ou (botao = "a") ou (botao = "s") ou (botao = "d")

      salvarCampo

      // EXECUTA OS MOVIMENTOS DEPENDENDO DO BOTAO
      se (botao = "w") entao
            moverCima
      fimse
      se (botao = "s") entao
            moverBaixo
      fimse
      se (botao = "a") entao
            moverEsquerda
      fimse
      se (botao = "d") entao
            moverDireita
      fimse

      teveMovimento
      
fimprocedimento

procedimento moverCima()
var
   l, c, k: inteiro
inicio
      // Repara q o 'c' virou o laço de fora
      para c de 1 ate 4 faca
            // Passo 1: Empurrar pra cima
            para l de 1 ate 3 faca
                  se (campo[l, c] = 0) entao
                        para k de (l + 1) ate 4 faca
                              se (campo[k, c] <> 0) entao
                                    campo[l, c] <- campo[k, c]
                                    campo[k, c] <- 0
                                    interrompa
                              fimse
                        fimpara
                  fimse
            fimpara

            // Passo 2: Juntar os iguais
            para l de 1 ate 3 faca
                  se (campo[l, c] <> 0) e (campo[l, c] = campo[l + 1, c]) entao
                        campo[l, c] <- campo[l, c] * 2
                        campo[l + 1, c] <- 0
                  fimse
            fimpara

            // Passo 3: Empurrar de novo
            para l de 1 ate 3 faca
                  se (campo[l, c] = 0) entao
                        para k de (l + 1) ate 4 faca
                              se campo[k, c] <> 0 entao
                                    campo[l, c] <- campo[k, c]
                                    campo[k, c] <- 0
                                    interrompa
                              fimse
                        fimpara
                  fimse
            fimpara
      fimpara
fimprocedimento

procedimento moverBaixo()
var
   l, c, k: inteiro
inicio
      // Repara q o 'c' virou o laço de fora
      para c de 1 ate 4 faca
            // Passo 1: Empurrar pra cima
            para l de 4 ate 2 passo -1 faca
                  se (campo[l, c] = 0) entao
                        para k de (l - 1) ate 1 passo -1 faca
                              se (campo[k, c] <> 0) entao
                                    campo[l, c] <- campo[k, c]
                                    campo[k, c] <- 0
                                    interrompa
                              fimse
                        fimpara
                  fimse
            fimpara

            // Passo 2: Juntar os iguais
            para l de 4 ate 2 passo -1 faca
                  se (campo[l, c] <> 0) e (campo[l, c] = campo[l - 1, c]) entao
                        campo[l, c] <- campo[l, c] * 2
                        campo[l - 1, c] <- 0
                  fimse
            fimpara

            // Passo 3: Empurrar de novo
            para l de 4 ate 2 passo -1 faca
                  se (campo[l, c] = 0) entao
                        para k de (l - 1) ate 1 passo -1 faca
                              se campo[k, c] <> 0 entao
                                    campo[l, c] <- campo[k, c]
                                    campo[k, c] <- 0
                                    interrompa
                              fimse
                        fimpara
                  fimse
            fimpara
      fimpara
fimprocedimento

procedimento moverDireita()
var
   l, c, k: inteiro
inicio
      // Repara q o 'c' virou o laço de fora
      para l de 1 ate 4 faca
            // Passo 1: Empurrar pra cima
            para c de 4 ate 2 passo -1 faca
                  se (campo[l, c] = 0) entao
                        para k de (c - 1) ate 1 passo -1 faca
                              se (campo[l, k] <> 0) entao
                                    campo[l, c] <- campo[l, k]
                                    campo[l, k] <- 0
                                    interrompa
                              fimse
                        fimpara
                  fimse
            fimpara

            // Passo 2: Juntar os iguais
            para c de 4 ate 2 passo -1 faca
                  se (campo[l, c] <> 0) e (campo[l, c] = campo[l, c - 1]) entao
                        campo[l, c] <- campo[l, c] * 2
                        campo[l, c - 1] <- 0
                  fimse
            fimpara

            // Passo 3: Empurrar de novo
            para c de 4 ate 2 passo -1 faca
                  se (campo[l, c] = 0) entao
                        para k de (c - 1) ate 1 passo -1 faca
                              se campo[k, c] <> 0 entao
                                    campo[l, c] <- campo[l, k]
                                    campo[l, k] <- 0
                                    interrompa
                              fimse
                        fimpara
                  fimse
            fimpara
      fimpara
fimprocedimento

procedimento moverEsquerda()
var
   l, c, k: inteiro
inicio
      // Repara q o 'c' virou o laço de fora
      para l de 1 ate 4 faca
            // Passo 1: Empurrar pra cima
            para c de 1 ate 3 faca
                  se (campo[l, c] = 0) entao
                        para k de (c + 1) ate 4 faca
                              se (campo[l, k] <> 0) entao
                                    campo[l, c] <- campo[l, k]
                                    campo[l, k] <- 0
                                    interrompa
                              fimse
                        fimpara
                  fimse
            fimpara

            // Passo 2: Juntar os iguais
            para c de 1 ate 3 faca
                  se (campo[l, c] <> 0) e (campo[l, c] = campo[l, c + 1]) entao
                        campo[l, c] <- campo[l, c] * 2
                        campo[l, c + 1] <- 0
                  fimse
            fimpara

            // Passo 3: Empurrar de novo
            para c de 1 ate 3 faca
                  se (campo[l, c] = 0) entao
                        para k de (c + 1) ate 4 faca
                              se campo[k, c] <> 0 entao
                                    campo[l, c] <- campo[l, k]
                                    campo[l, k] <- 0
                                    interrompa
                              fimse
                        fimpara
                  fimse
            fimpara
      fimpara
fimprocedimento






// ANALISA SE TEM CASA VAZIA
funcao casaVazia() : logico
var
qntAnalisada : inteiro
inicio
      para x de 1 ate 4 faca
            para y de 1 ate 4 faca
                  se campo[x, y] = 0 entao
                        retorne verdadeiro  // TRUE SE TIVER 0
                        interrompa
                  fimse
                  qntAnalisada <- (qntAnalisada + 1)  // ADD 1 SE != 0
            fimpara
      fimpara

      se (qntAnalisada = 16) entao
            retorne falso
      fimse
fimfuncao






funcao checarGameover() : logico
var
possivelX : logico
possivelY : logico
inicio

      para x de 1 ate 4 faca
            para y de 1 ate 3 faca
                  se campo[x, y] = campo[x, y + 1] entao
                        possivelX <- verdadeiro
                  fimse
            fimpara
      fimpara

      para y de 1 ate 4 faca
            para x de 1 ate 3 faca
                  se campo[x, y] = campo[x + 1, y] entao
                        possivelY <- verdadeiro
                        interrompa
                  fimse
            fimpara
      fimpara

      se (possivelX = falso) e (possivelY = falso) entao
            retorne verdadeiro
      senao
            retorne falso
      fimse

fimfuncao






// LOOP DE RODADA
procedimento rodada()
inicio

// DROP DE NUMERO RANDOM, VE SE TEM CASA VAZIA ANTES
      se casaVazia = verdadeiro entao
            aleatorio on
            aleatorio 1, 4

      // REPETE ATE ACHAR CASA UMA VAZIA
            repita
                  leia(x)
                  leia(y)
            ate (campo[x, y] = 0)
   
            // RANDOM DROP
            aleatorio 1, 10
            leia(drop)
            aleatorio off

            se drop <= 8 entao
                  drop <- 2
            senao
                  drop <- 4
            fimse
   
            campo[x, y] <-  drop
            
            apresentaTela
      senao
            se checarGameover = verdadeiro entao
                  limpatela
                  escreval("FIM DE JOGO")
            senao
                  apresentaTela
            fimse
      fimse

      
fimprocedimento

procedimento apresentaTela()
inicio
      // APRESENTA A RODADA
      mostrarCampo
      input
fimprocedimento






// INICIO DO JOGO

rodada
//apresentaTela

Fimalgoritmo
