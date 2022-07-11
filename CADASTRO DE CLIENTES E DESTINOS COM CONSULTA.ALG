Algoritmo "Cadastro de clientes e destinos com consulta"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Arthur
// Descrição   : Cadastro de clientes e destinos com consulta..
// Autor(a)    : Fabio Rodrigues dos Santos
// Data atual  : 10/07/2022
Var
cliente:vetor[1..3, 1..3] de caracter
item: vetor [1..3] de caracter
indexI, indexJ:inteiro
destino: vetor[1..3] de caracter
op,nome,cpf, consultaDestino: caracter
cod,i,j,s:inteiro

procedimento inicializar()
inicio
      enquanto op <> "4" faca
         escreval("--------------------")
         escreval("        Menu        ")
         escreval("--------------------")
         escreval("[1] Cadastrar Clientes")
         escreval("[2] Cadastrar Destino")
         escreval("[3] Consulta ")
         escreval("[4] Sair")
         escreva("Opção: ")
         leia(op)
         se (op = "1") entao
            limpatela
            cadastraCliente()
         fimse
         se (op = "2") entao
            limpatela
            cadastraDestino()
         fimse
         se (op = "3") entao
            limpatela
            consulta()
         fimse
         se (op = "4") entao
            para indexI de 1 ate 3 passo 1 faca
                 cliente[indexI] <- "x"
            fimpara
            limpatela
            escreval("Programa finalizado!")
         fimse
      fimenquanto
fimprocedimento

procedimento cadastraCliente() // Cadastra os clientes.
inicio
      // indexI
      item[1] <- "Primeiro Nome: "
      item[2] <- "Sobrenome: "
      item[3] <- "CPF: "
      escreval("---------Cadastro de Clientes----------")
      para indexI de 1 ate 3 passo 1 faca
           para indexJ de 1 ate 3 passo 1 faca
                escreva(item[indexJ])
                leia(cliente[indexI, indexJ])
           fimpara
           escreval("---------------------------------------")
      fimpara
      menuCliente()
fimprocedimento

procedimento cadastraDestino()  //Cadastra os destinos.
inicio

      para i de 1 ate 3 passo 1 faca
              escreval("----Cadastro de Destino----")
              escreva("Destino: ")
              leia(destino[i])
      fimpara
      limpatela
      menuDestino()
fimprocedimento

procedimento menuCliente() // Continua cadastrando cliente ou volta para o menu inicial.
inicio
      escreva("Voltar para o Menu [S/N]? ")
      leia(op)
      se (op = "s") entao
         indexI <- indexI + 1
         limpatela
         inicializar()
      senao
           limpatela
           cadastraCliente()
      fimse
fimprocedimento

procedimento menuDestino()  // Continua cadastrando destino ou volta para o menu inicial.
inicio
      escreva("Voltar para o Menu [S/N]? ")
      leia(op)
      se (op = "s") entao
         indexI <- indexI + 1
         limpatela
         inicializar()
      senao
           limpatela
           cadastraDestino()
      fimse
fimprocedimento


procedimento consulta()   // Consulta os dados por nome, cpf ou destino.
inicio
      escreval("-------Menu Consulta-------")
      escreval("[1] Cliente por (Nome)")
      escreval("[2] Cliente por (CPF)")
      escreval("[3] Destino")
      escreval("[4] Menu principal")
      escreva("Digite a opção: ")
      leia(cod)
      se (cod = 1) entao   // Consulta por nome
         j <- 0
         escreva("Digite o nome do cliente: ")
         leia(nome)
         para indexI de 1 ate 3 passo 1 faca
              se (nome = cliente[indexI,1]) entao
                 para indexJ de 1 ate 3 passo 1 faca
                      escreval(item[indexJ], cliente[indexI, indexJ])
                 fimpara
                 j <- j + 1
              fimse
         fimpara
         se (j = 0) entao
            escreval("Cliente inexistente")
         fimse
      fimse

      se (cod = 2) entao // Consulta por cpf.
         escreva("Digite o CPF do cliente: ")
         leia(cpf)
         para indexI de 1 ate 3 passo 1 faca
              se(cpf = cliente[indexI, 3]) entao
                   para indexJ de 1 ate 3 passo 1 faca
                     escreval(item[indexJ], cliente[indexI, indexJ])
                   fimpara
              fimse
         fimpara
      fimse

      se (cod = 3) entao  // Consulta por destino.
         s <- 0
         escreva("Digite o Destino: ")
         leia(consultaDestino)
         para indexI de 1 ate 3 passo 1 faca
              se (consultaDestino = destino[indexI]) entao
                 escreval("Destino: ", destino[indexI])
                 s <- s + 1
              fimse
         fimpara
      fimse
      voltar_menu_2()
      limpatela
fimprocedimento

procedimento voltar_menu_2() // Recebe a resposta para sair da consulta ou continuar.
inicio
      escreva("Voltar para o Menu [S/N]? ")
      leia(op)
      se (op = "s") entao
         limpatela
         inicializar()
      senao
           limpatela
           consulta()
      fimse
fimprocedimento


Inicio // Programa principal
       inicializar()

Fimalgoritmo