#Exercícios Harbour - Apostila

1) Elabore um programa que apresente a mensagem "Ola Mundo!".
```harbour
clear  // Limpa a tela do console

@01,01 say "Ola mundo!"  // Posiciona o cursor na posição (1, 1) e exibe a string "Alo mundo"
```

2) Faça um programa que mostre seu nome, idade e peso.
```harbour
clear  // Limpa a tela do console

@01,01 say "Nome: Tiago Nascimento da Silva"  // Exibe o texto "Nome: Tiago Nascimento da Silva" na posição (1, 1)
@02,01 say "Idade: 29 anos"  // Exibe o texto "Idade: 29 anos" na posição (2, 1)
@03,01 say "Peso: 100kg"  // Exibe o texto "Peso: 100kg" na posição (3, 1)
```

3) Elabore um programa que tenha dois números e apresente seu produto.
```harbour
clear  // Limpa a tela do console

nValor1 := 0  // Declara e inicializa a variável nValor1 com o valor zero
nValor2 := 0  // Declara e inicializa a variável nValor2 com o valor zero

@01,01 say "Insira o primeiro valor: "  // Exibe a mensagem "Insira o primeiro valor:" na posição (1, 1)
@02,01 say "Insira o segundo valor.: "  // Exibe a mensagem "Insira o segundo valor.:" na posição (2, 1)

@01,30 get nValor1 picture "99"  // Obtém a entrada do usuário para nValor1 na posição (1, 30) com um formato de duas casas decimais
@02,30 get nValor2 picture "99"  // Obtém a entrada do usuário para nValor2 na posição (2, 30) com um formato de duas casas decimais
read  // Lê a entrada do usuário

nTotal  := nValor1 + nValor2  // Calcula a soma dos valores nValor1 e nValor2 e atribui o resultado à variável nTotal

@04,01 say "O produto da soma de " + AllTrim(Str(nValor1)) + " e " + AllTrim(Str(nValor2)) + " equivale a " + AllTrim(Str(nTotal)) + "."  // Exibe a mensagem com a soma dos valores na posição (4, 1)
```

4) Desenhe uma tela.
```harbour
clear  // Limpa a tela do console

//@01,01 say "***************************************************************"
@01,01 say replicate("*", 63)  // Exibe uma linha de asteriscos repetidos para criar uma moldura
@02,01 say "|*                      SUPER SISTEMA                        *|"  // Exibe o título "SUPER SISTEMA" dentro da moldura
@03,01 say "|****************(A P R E S E N T A C A O)********************|"  // Exibe o subtítulo "(APRESENTAÇÃO)" dentro da moldura
@04,01 say "|*                                                           *|"  // Exibe uma linha vazia dentro da moldura
@05,01 say "|*          Sistema desenvolvido pelos alunos do             *|"  // Exibe uma mensagem sobre o sistema dentro da moldura
@06,01 say "|*    Curso de Programacao da SG Sistemas-Proj.SGTrainee     *|"  // Exibe uma mensagem sobre o curso de programação dentro da moldura
@07,01 say "|*                                                           *|"  // Exibe uma linha vazia dentro da moldura
@08,01 say "|*Aluno: Tiago Nascimento da Silva                           *|"  // Exibe o nome do aluno dentro da moldura
@09,01 say "|*Linguagem de Programacao: Harbour                          *|"  // Exibe a linguagem de programação dentro da moldura
@10,01 say "|*04/07/2023                                                 *|"  // Exibe a data dentro da moldura
@11,01 say "|*************************************************************|"  // Exibe uma linha de asteriscos repetidos para fechar a moldura

@00,00 to 12,64 double  // Define uma borda dupla em volta da área exibida
```

5) Construa um programa que possua duas variáveis numéricas A e B e efetue a troca dos valores de forma que a variável A passe a possuir o valor da variável B e vice-versa. Apresente os valores trocados.
```harbour
clear  // Limpa a tela do console

nVariavelA := 0  // Declara e inicializa a variável nVariavelA com o valor zero
nVariavelB := 0  // Declara e inicializa a variável nVariavelB com o valor zero

@00,00 to 11,40 double  // Define uma borda dupla em volta da área exibida

@01,01 say "Insira o valor da variavel A:"  // Exibe a mensagem "Insira o valor da variavel A:" na posição (1, 1)
@02,01 say "Insira o valor da variavel B:"  // Exibe a mensagem "Insira o valor da variavel B:" na posição (2, 1)

@01,35 get nVariavelA picture "999"  // Obtém a entrada do usuário para nVariavelA na posição (1, 35) com um formato de três dígitos
@02,35 get nVariavelB picture "999"  // Obtém a entrada do usuário para nVariavelB na posição (2, 35) com um formato de três dígitos
read  // Lê a entrada do usuário

@04,01 say "O valor da variavel A e: " + AllTrim(Str(nVariavelA))  // Exibe o valor de nVariavelA na posição (4, 1)
@05,01 say "O valor da variavel B e: " + AllTrim(Str(nVariavelB))  // Exibe o valor de nVariavelB na posição (5, 1)

@07,01 say "Apos a troca"

nVariavelTroca := nVariavelA  // Armazena o valor de nVariavelA em nVariavelTroca
nVariavelA := nVariavelB  // Atribui o valor de nVariavelB a nVariavelA
nVariavelB := nVariavelTroca  // Atribui o valor de nVariavelTroca a nVariavelB

@09,01 say "O valor da variavel A e: " + AllTrim(Str(nVariavelA))  // Exibe o novo valor de nVariavelA na posição (9, 1)
@10,01 say "O valor da variavel B e: " + AllTrim(Str(nVariavelB))  // Exibe o novo valor de nVariavelB na posição (10, 1)

InKey(0)  // Aguarda a entrada de uma tecla antes de encerrar o programa
```

6) Elabore um programa que tenha três números e apresente a média.
```harbour
clear  // Limpa a tela do console

nNota1Bimestre := 0  // Declara e inicializa a variável nNota1Bimestre com o valor zero
nNota2Bimestre := 0  // Declara e inicializa a variável nNota2Bimestre com o valor zero
nNota3Bimestre := 0  // Declara e inicializa a variável nNota3Bimestre com o valor zero

@01,01 say "Insira a nota do primeiro bimestre:"  // Exibe a mensagem "Insira a nota do primeiro bimestre:" na posição (1, 1)
@02,01 say "Insira a nota do segundo bimestre.:"  // Exibe a mensagem "Insira a nota do segundo bimestre.:" na posição (2, 1)
@03,01 say "Insira a nota do terceiro bimestre:"  // Exibe a mensagem "Insira a nota do terceiro bimestre:" na posição (3, 1)

@01,38 get nNota1Bimestre picture "99" valid nNota1Bimestre > 0  // Obtém a entrada do usuário para nNota1Bimestre na posição (1, 38) com um formato de duas casas decimais e valida se o valor é maior que zero
@02,38 get nNota2Bimestre picture "99" valid nNota2Bimestre > 0  // Obtém a entrada do usuário para nNota2Bimestre na posição (2, 38) com um formato de duas casas decimais e valida se o valor é maior que zero
@03,38 get nNota3Bimestre picture "99" valid nNota3Bimestre > 0  // Obtém a entrada do usuário para nNota3Bimestre na posição (3, 38) com um formato de duas casas decimais e valida se o valor é maior que zero
read  // Lê a entrada do usuário

nMedia := (nNota1Bimestre + nNota2Bimestre + nNota3Bimestre) / 3  // Calcula a média das notas e atribui o resultado à variável nMedia

@05,01 say "A media das notas e: " + AllTrim(Str(nMedia))  // Exibe a mensagem com a média das notas na posição (5, 1)

@00,00 to 06,40 double  // Define uma borda dupla em volta da área exibida

Inkey(0)  // Aguarda a entrada de uma tecla antes de encerrar o programa
```

Calendário em harbour
```harbour
clear

set date brit
set epoch to 1940

dNascimento := CToD("")
dAtual      := Date()

@ 01,01 say "Insira sua data de nascimento: "

@ 01,33 get dNascimento valid dNascimento < dAtual
read

nDiaNascimento        := Day(dNascimento)
nMesNascimento        := Month(dNascimento)
nAnoAtual             := Year(dAtual)
nAnoParaCalculo       := nAnoAtual
nMesParaCalculo       := nMesNascimento
dInicioMesAniversario := CToD("01/" + Str(nMesNascimento) + "/" + Str(nAnoAtual))
dDiaSemanaInicio      := DoW(dInicioMesAniversario)
nContador             := 1
nLinha                := 07
nColuna               := dDiaSemanaInicio * 4

if nMesNascimento == 12
   nMesParaCalculo := 0
   nAnoParaCalculo++
endif

dFimMesAniversario    := CToD("01/" + Str(nMesParaCalculo + 1) + "/" + Str(nAnoParaCalculo))
nDiasMes              := dFimMesAniversario - dInicioMesAniversario

@ 03,01 say "Calendario do mes de aniversario do ano atual"

do while nContador <= nDiasMes
   cCorDestaque := "W/N"
   cEspacador   := ""

   If nColuna > 28
      nLinha++
      nColuna := 4
   endif

   if nContador < 10
      cEspacador := " "
   endif

   if nContador == nDiaNascimento
      cCorDestaque := "W/R"
   endif

   @ 05,04 say "D   S   T   Q   Q   S   S"
   @ nLinha,nColuna say cEspacador + AllTrim(Str(nContador)) color(cCorDestaque)

   nContador++
   nColuna += 4
enddo
```
DESCOBERTA NAVAL

```harbour
set scoreboard off
clear

do while .t.
   //Tabuleiro
   nLarguraTabuleiro      := 6
   nAlturaTabuleiro       := 6
   nInicioTabuleiroX      := 24
   nInicioTabuleiroY      := 6
   nTamanhoXPeca          := 9
   nTamanhoYPeca          := 3
   //Infos do game
   nJogadasRestantes      := 20
   nJogadasRealizadas     := 0
   nAcertos               := 0
   nErros                 := 0
   //Cordemadas jogadas
   cCoordenadasJogadas    := ""
   cCoordenadaEmbarcacoes := "1x1 | 1x5 | 3x6 | 4x2 | 5x5 | 6x3 | "
   //Vari veis para valida‡Æo
   nEmbarcacoes           := Len(cCoordenadaEmbarcacoes) / 6
   nOpcao                 := 0
   nOpcaoDerrota          := 0

   //Desenha o tabuleiro
   set color to B/B

   @ nInicioTabuleiroY,nInicioTabuleiroX clear to nInicioTabuleiroY + nTamanhoYPeca * nAlturaTabuleiro -1,nInicioTabuleiroX + nTamanhoXPeca * nLarguraTabuleiro -1

   do while .t.
      //Inputs do jogador
      nXInputJogador     := 0
      nYInputJogador     := 0
      //Armazena a coordenada jogada para valida‡Æo
      cCordenadaJogada   := ""
      //Vari veis utilizadas para desenhar as coordenadas no mapa dinamicamente
      cCoordenadasXMapa  := ""
      nContadorX         := 1
      nContadorY         := 1

      set color to W/N

      @ 05,01 clear to 08,15

      //define as coordenadas do mapa dinamicamente
      do while nLarguraTabuleiro >= nContadorX
         cCoordenadasXMapa += PadC(AllTrim(Str(nContadorX++)), nTamanhoXPeca)
      enddo

      do while nAlturaTabuleiro >= nContadorY
         @ nInicioTabuleiroY + (nContadorY - 1) * nTamanhoYPeca + nTamanhoYPeca / 2,nInicioTabuleiroX - 2 say AllTrim(Str(nContadorY++))
      enddo

      //contornos do game
      @ 00,00 to 05,17 double
      @ 00,00 to 24,17 double
      @ 00,00 to 02,79 double
      @ 00,00 to 24,79 double

      //desenha as coordenadas X do mapa
      @ nInicioTabuleiroY - 2,nInicioTabuleiroX say cCoordenadasXMapa

      @ 01,01 say PadC("DESCOBERTA NAVAL", 78)
      @ 03,01 say "Linha.:"
      @ 04,01 say "Coluna:"
      @ 06,01 say "JOGADAS"
      @ 07,01 say "Restantes.: " + AllTrim(Str(nJogadasRestantes))
      @ 08,01 say "Realizadas: " + AllTrim(Str(nJogadasRealizadas))
      @ 09,01 say "Acertos...: " + AllTrim(Str(nAcertos))
      @ 10,01 say "Erros.....: " + AllTrim(Str(nErros))

      @ 03,09 get nYInputJogador picture "9" valid nYInputJogador >= 1 .and. nYInputJogador <= nAlturaTabuleiro
      @ 04,09 get nXInputJogador picture "9" valid nXInputJogador >= 1 .and. nXInputJogador <= nLarguraTabuleiro
      read

      if LastKey() == 27
         nOpcao := Alert("Deseja abandonar o jogo?", {"Sim", "Nao"})

         if nOpcao == 1
            exit
         endif

         loop
      endif

      cCordenadaJogada := AllTrim(Str(nYInputJogador)) + "x"  + AllTrim(Str(nXInputJogador)) + " | "
      nJogadasRestantes--
      nJogadasRealizadas++

      //verifica se a coordenada j  foi jogada ou se foi um acerto ou erro
      if cCordenadaJogada $ cCoordenadasJogadas
         Alert("Coordenadas ja utilizadas!")

         loop
      endif

      if cCordenadaJogada $ cCoordenadaEmbarcacoes
         set color to R/R
         nAcertos++
         Alert("Encontrou!")
      else
         set color to W/W
         nErros++
         Alert("Errou!")
      endif

      //desenha as coordenadas jogadas no mapa
      nCoordenadaYInicioPeca  := nInicioTabuleiroY + (nYInputJogador - 1) * nTamanhoYPeca
      nCoordenadaXInicioPeca  := nInicioTabuleiroX + (nXInputJogador - 1) * nTamanhoXPeca
      nCoordenadaYFimPeca     := nCoordenadaYInicioPeca + nTamanhoYPeca - 1
      nCoordenadaXFimPeca     := nCoordenadaXInicioPeca + nTamanhoXPeca - 1

      @ nCoordenadaYInicioPeca,nCoordenadaXInicioPeca clear to nCoordenadaYFimPeca,nCoordenadaXFimPeca

      cCoordenadasJogadas += AllTrim(Str(nYInputJogador)) + "x"  + AllTrim(Str(nXInputJogador)) + " | "

      //verifica vit¢ria ou derrota
      if nAcertos == nEmbarcacoes
         Alert("Voce ganhou. Parabens!")

         exit
      endif

      if nJogadasRealizadas == 20
         Alert("Voce perdeu! Tentativas restantes nao sao suficientes para desvendar todas as embarcacoes")

         nOpcaoDerrota:= Alert("Jogar novamente?", {"Sim", "Nao"})

         if nOpcaoDerrota == 2
            exit
         endif

         exit
      endif
   enddo

   if nOpcaoDerrota == 2
      exit
   endif

   if nOpcao == 1
      exit
   endif
enddo
```
