Algoritmo "PROJETO LPOO"
//NOME: MIGUEL URSULINO DE FARIA
//CPD: 47334
//CURSO: SISTEMAS DE INFORMAÇÃO
//DISCIPLINA: LPOO
//PROFESSOR: ALDO HENRIQUE

Var
   v1,v2,v3,menor,maior,cont,num0,operacoes, num1,cont1,cont2,primo,soma,num2: inteiro
   qtd_pessoas,idade,idadem,idadef,contador,idade_arm,masc,fem: inteiro
   media,mediam,mediaf,resultado: real
   sexo,cond: caractere
   m1,m2,m3,m4,m5,m6,m7,m8,m9,m0,limite: caractere

   //Procedimento de divisão de dois números "CASO 1"!
procedimento dividir
var
   num1, num2:inteiro
   resultado: real
   resul:caractere
inicio
   escreval ("            **DIVISÃO DE NÚMEROS!!**")
   escreval
   resul <- "s"

   enquanto resul = "s" faca
      escreva (" Insira o primeiro número:", " ")
      leia (num1)
      escreva (" Insira o segundo número:", " ")
      leia (num2)
      // restrição de divisão por 0 (zero)!
      se (num2 <= 0) entao
         escreval (" Não é possível efetuar divisão por 0 (zero) ou por caractere invalido!")
      senao
         resultado <- num1/num2
         escreval(" O resultado da divisão é:", resultado)
      fimse
      escreval (" Deseja Continuar s-sim ou n-não:", " ")
      leia (resul)
   fimenquanto
   limpatela
fimprocedimento



//Procedimento de cálculo de faixa etária "CASO 2"!
procedimento faixa_etaria
var
   contador, idade_arm, idade, qtd_pessoas, idadem, masc, fem, idadef:inteiro
   media,mediam,mediaf:real
   sexo,cont: caractere
inicio
   escreval ("        **FAIXA ETÁRIA**")
   escreval
   cont <- "s"
   enquanto cont = "s" faca
      escreva (" Insira o número de pessoas:", " ")
      leia (qtd_pessoas)

      contador <- 1
      idade_arm <- 0

      // O contador vai adicionar 1 a cada ciclo até atingir o valor de qtd_pessoas.
      enquanto (contador <= qtd_pessoas) faca

         idade_arm <- idade_arm+idade

         escreva (" Qual o sexo da pessoa ", contador,", m (masculino) ou f (feminino):", " ")
         leia (sexo)

         escreva (" Qual a idade da pessoa", contador, ": ")
         leia (idade)
         escreval
         // Nesta função SE é calclada a média do sexo masculino.
         se (sexo = "m") entao
            idadem <- idade+idadem
            masc <- masc + 1
            // Nesta função SENAO é calculada a média do sexo feminino.
         senao
            se (sexo= "f") entao
               idadef <- idade+idadef
               fem <- fem+1
            fimse
         fimse
         contador <- contador+1
      fimenquanto
      // Cálculo das médias.
      media <- (idade+idade_arm)/qtd_pessoas
      mediam <- (idadem)/masc
      mediaf <- (idadef)/fem

      escreval (" Quantidade de pessoas do sexo masculino:", masc)
      escreval (" Quantidade de pessoas do sexo feminino:", fem)
      escreval (" A média das idades de ambos os sexos é:", media)
      escreval (" A média das idades do sexo masculino é:", mediam)
      escreval (" A média das idades do sexo feminino é:", mediaf)
      escreval (" Deseja continuar s-sim ou n-não:", " ")
      leia (cont)

   fimenquanto
   escreval
   limpatela
fimprocedimento

//Procedimento que calcula numeros primos "CASO 3"!
procedimento Numeros_primos
var
   cont1, cont2,primo,num1, soma:inteiro
   cond:caractere
inicio
   cond <- "s"
   escreval ("               **SOMA DE NÚMEROS PRIMOS**")
   escreval
   enquanto (cond = "s") faca
      escreva (" Insira um número inteiro:", " ")
      leia (num1)
      escreval (" Esses são os números primos de 1 até ",num1,"!")
      para cont1 de 1 ate num1 faca
         primo <-0
         para cont2 de 1 ate cont1 faca
            se (cont1 mod cont2=0) entao
               primo <- primo+1
            fimse
         fimpara
         se (primo=2) entao
            escreva (cont1,", ")
            soma <- soma+cont1
         fimse
      fimpara
      escreval
      escreval (" A soma dos primos é:", soma)
      escreval (" Deseja Continuar s (sim) ou n (não):", " ")
      leia (cond)
      se (cond = "s") entao
         soma <- 0
      fimse

   fimenquanto
   limpatela
fimprocedimento

//Procedimento informa o maior o menor e a média "CASO 4"!
procedimento Maior_menor_media
var
   v1,v2,v3,maior,menor,cont:inteiro
   media:real
   cond:caractere
inicio
   media <- 0
   v2 <- 0
   // Contador!
   cont <- 1
   cond <- "s"
   // Quantidade de numeros que o usuário irá inserir!
   // OBS.: Quantidade ilimitada!
   escreval ("              **MAIOR, MENOR E MÉDIA**")
   escreval
   enquanto cond = "s" faca
      escreva (" Informe a quantidade de itens que serão inseridos :", " ")
      leia (num0)
      escreval


      // Enquanto a variável cont não atingir o valor da variável num0 continua a inserir!
      enquanto (cont <= num0) faca
         v3 <- v1
         escreva (" Insira o número", cont," de", num0,":", " ")
         leia (v1)
         v2 <- v2+v1

         // Condição que localiza o menor numero!
         se (v3<=v1) entao
            menor <- v3
         senao
            menor <- v1
         fimse

         // Condição que localiza O MAIOR NUMERO!
         se (v3>=v1) entao
            maior <- v3
         senao
            maior <- v1
         fimse
         cont <- cont+1
      fimenquanto
      // Cálculo da média!
      media <- v2/num0
      escreval (" A média dos números é:", media)
      escreval (" O menor número é:", menor)
      escreval (" O maior número é:", maior)
      escreval
      escreval (" Deseja continuar s-sim ou n-não:", " ")
      leia (cond)
   fimenquanto
   limpatela
fimprocedimento

//Procedimento que pede um valor de 0 a 20 e retorna em código morse "CASO 5"!
procedimento codigo_morse
var
   num1:inteiro
   limite:caractere
inicio
   escreval ("                   **CÓDIGO MORSE**")
   escreval
   // Atribuição das variáveis com os códigos morse de 0 a 20!
   m1 <- "•----"
   m2 <- "••---"
   m3 <- "•••--"
   m4 <- "••••-"
   m5 <- "•••••"
   m6 <- "-••••"
   m7 <- "--•••"
   m8 <- "---••"
   m9 <- "----•"
   m0 <- "-----"
   limite <- "s"

   enquanto (limite = "s") faca
      escreval (" Insira um número de 0 a 20:", " ")
      leia (num1)
      // Condição de limite, para não ultrapassar o valor maximo do programa!
      se (num1>20) entao
         //Condição de contenção
         escreva (" Número não suportado pelo programa insira um número de 0 a 20!")
         escreval
      senao
         se (num1=0) entao
            escreval ("Código morse", m0)
         senao
            se (num1=1) entao
               escreval ("Código morse", m1)
            senao
               se (num1=2) entao
                  escreval ("Código morse", m2)
               senao
                  se (num1=3) entao
                     escreval ("Código morse", m3)
                  senao
                     se (num1=4) entao
                        escreval ("Código morse", m4)
                     senao
                        se (num1=5) entao
                           escreval ("Código morse", m5)
                        senao
                           se (num1=6) entao
                              escreval ("Código morse", m6)
                           senao
                              se (num1=7) entao
                                 escreval ("Código morse", m7)
                              senao
                                 se (num1=8) entao
                                    escreval ("Código morse", m8)
                                 senao
                                    se (num1=9) entao
                                       escreval ("Código morse", m9)
                                    senao
                                       se (num1=10) entao
                                          escreval ("Código morse", m1,m0)
                                       senao
                                          se (num1=11) entao
                                             escreval ("Código morse", m1,m1)
                                          senao
                                             se (num1=12) entao
                                                escreval ("Código morse", m1,m2)
                                             fimse
                                          fimse
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
            se (num1=13) entao
               escreval ("Código morse", m1,m3)
            senao
               se (num1=14) entao
                  escreval ("Código morse", m1,m4)
               senao
                  se (num1=15) entao
                     escreval ("Código morse", m1,m5)
                  senao
                     se (num1=16) entao
                        escreval ("Código morse", m1,m6)
                     senao
                        se (num1=17) entao
                           escreval ("Código morse", m1,m7)
                        senao
                           se (num1=18) entao
                              escreval ("Código morse", m1,m8)
                           senao
                              se (num1=19) entao
                                 escreval ("Código morse", m1,m9)
                              senao
                                 se (num1=20) entao
                                    escreval ("Código morse", m2,m0)
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
      escreval
      escreva (" Deseja continuar s (sim) ou n (não):", " ")
      leia (limite)
      escreval
   fimenquanto
   limpatela

fimprocedimento

//Procedimento de numero binário

procedimento num_binario

var
   result:caractere
   n0,n1,n2,n3,n4,n5,n6,n7,num1,num2,opcao,cond:inteiro
   resultado:real
inicio
   escreval ("                **MUDANÇA DE BASE**")
   escreval
   escreval (" 1 - Decimal para binário")
   escreval (" 2 - Binário para decimal")
   escreval (" Escolha a opção desejada:", " ")
   leia (opcao)

   escolha opcao

   caso 1
      // Calcula decimal para base binaria!
      escreval (" Insira um valor decimal:", " ")
      leia (num1)

      num2 <- num1
      result <- ""

      enquanto num1> 0 faca
         se (num1 mod 2 = 0) entao
            result <- "0" + result
         senao
            result <- "1" + result
         fimse
         num1 <- num1 div 2
      fimenquanto
      escreval
      escreva (" O valor em binário é:", result)

   caso 2

      //Calcula binário para base decimal

      repita
         escreval (" Insira um número binario de 8 bits:")
         escreval (" Número 1:", " ")
         leia (n0)
         escreval (" Número 2:", " ")
         leia (n1)
         escreval (" Número 3:", " ")
         leia (n2)
         escreval (" Número 4:", " ")
         leia (n3)
         escreval (" Número 5:", " ")
         leia (n4)
         escreval (" Número 6:", " ")
         leia (n5)
         escreval (" Número 7:", " ")
         leia (n6)
         escreval (" Número 8:", " ")
         leia (n7)

         resultado <- n7*2^0+n6*2^1+n5*2^2+n4*2^3+n3*2^4+n2*2^5+n1*2^6+n0*2^7

         escreval (" O número binário acima em base decimal é:", resultado)
      fimrepita
   fimescolha
   escreval
fimprocedimento

//Menu de opções!
Inicio
   repita
      escreval ("              **MENU DE GERAL DE OPÇÕES**")
      escreval
      escreval (" 1. Divisão")
      escreval (" 2. Faixa Etária")
      escreval (" 3. Números Primos")
      escreval (" 4. Retornar o Maior, Menor e Média")
      escreval (" 5. Código Morse")
      escreval (" 6. Mudança de Base")
      escreval (" 7. Sair")
      escreval
      escreva (" Digite o numero da opção desejada:", " ")
      leia (operacoes)
      escreval
      escolha operacoes
         // Este caso trata da divisão de dois números!
      caso 1
         dividir

         // Este caso refere-se a faixa etária!
      caso 2
         faixa_etaria

         // Este caso refere-se a números primos!
      caso 3
         Numeros_primos

         // Este caso retorna o maior o menor e a média.
      caso 4
         Maior_menor_media

         // Este caso retorna código morse
      caso 5
         codigo_morse

         // Este caso refere-se a mudança de base binario decmal!
      caso 6
         num_binario

         // Este caso finaliza o algoritmo!
      caso 7

fimalgoritmo
outrocaso
   escreval
   escreval (" **Valor incorreto informe uma opção de 1 a 7 no menu!**")
   escreval
fimescolha
ate operacoes = 7



Fimalgoritmo