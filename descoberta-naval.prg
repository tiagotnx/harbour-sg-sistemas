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
