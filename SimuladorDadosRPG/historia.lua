-- Cleomadson Dias Santos Medeiros
function DecidirCaminho(pontosDado, continue, quantidadeVidas, modificador)
    if continue == 0 then
        print("\n\nVoce comeca em uma cela de uma prision sendo uma criatura sem esperanca")
        print("Um cavalheiro lhe observa de cima e joga a chave para voce")
        print("Sem entender, voce pega a chave")
        print("Coincidentemente a chave e compativel com a porta da cela")
        print("Voce decide girar a chave...")
        return 1
    end

    if continue == 1 then
        if pontosDado <= 2 then
            print("\n\nParabens, cumulo da inutilidade, voce fez um grande feito")
            print("A chave quebrou na tranca, e voce passara o resto de sua vida nesta cela")
            print("VOCE MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 1
        else
            print("\n\nVoce abre a porta e prossegue por um corredor umido e estreito")
            print("Em sua frente voce encontra uma escada e decide subila")
            print("Ao chegar em cima, voce encontra uma fogueira")
            print("De repente, voce escuta uma voz que diz: As fogueiras preservarao sua humanidade")
            print("Apos ouvir a voz, voce decide acender esta fogueira...")
            print("No mesmo instante voce se sente revigorado!")
            print("Na frente da fogueira ha uma porta, e entao decide abrir")
            print("Voce se depara com uma criatura gigante num formato de morcego segurando um grande martelo!")
            print("O que voce fara?!")
            return 2
        end
    end    

    if continue == 2 then
        if pontosDado <= 5 then
            print("\n\nA criatura te da uma martelada e voce morre.")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 2
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("\n\nA criatura te acerta de raspao, voce sai ferido mas consegue escapar.")
            print("Seu corpo, porem, foi gravemente ferido.")
            modificador[1] = modificador[1] - 1
            print("Modificador diminuido! Agora voce esta com um modificador de: " .. modificador[1])
            return 3
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("\n\nVoce desvia do ataque da criatura com maestria, e escapa!")
            return 3
        elseif pontosDado > 16 then
            print("\n\nPor algum motivo de sorte, a criatura acerta o chao, e o mesmo se quebra")
            print("Lancando a criatura para o abismo")
            print("Voce sente uma onda de poder por ter escapado de forma tao improvavel.")
            modificador[1] = modificador[1] + 1
            print("Modificador aumentado! Agora voce esta com um modificador de: " .. modificador[1])
            return 4
        end
    end    

    if continue == 3 then
        print("\n\nAo atravessar o portao, voce chega em um lugar pacifico, rodeado de muralhas e vegetacao")
        print("Ao prosseguir seu caminho, voce se depara com um ser humano, e ele lhe diz que o nome deste lugar se chama:")
        print("Firelink.")
        print("A partir deste lugar, voce se depara com dois caminhos, uma estrada para a esquerda, e escadas para baixo")
        if pontosDado <= 5 then
            print("\n\nVoce decide ir para o caminho de baixo...")
            print("Ao descer as escadas, voce sente suas pernas tremerem, neste momento voce se da conta de uma coisa:")
            print("VOCE E SEDENTARIO!")
            print("Voce nao aguenta mais descer as escadas, suas pernas fraquejam, voce cai e morre kkkkkkkk")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 3
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("\n\nVoce decide ir para o caminho da esquerda")
            print("No meio do caminho, um animal selvagem surge do nada e o ataca.")
            print("Voce sobrevive, mas esta gravemente ferido!")
            modificador[1] = modificador[1] - 2
            print("Seu modificador foi severamente reduzido! Agora esta em: " .. modificador[1])
            return 4
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("\n\nVoce escolhe o caminho de baixo e desce as escadas com seguranca.")
            print("No subsolo, voce encontra uma antiga cripta. Ha uma espada luminosa fincada no chao.")
            print("Voce se aproxima da espada, sentindo um poder incrivel emanando dela.")
            return 4
        elseif pontosDado > 16 then
            print("\n\nVoce ignora os dois caminhos e, com um impulso repentino, escala uma parede alta.")
            print("Ao chegar no topo, encontra um altar antigo com simbolos estranhos.")
            print("Voce toca no altar e sente um grande poder fluindo em voce.")
            modificador[1] = modificador[1] + 2
            print("Modificador aumentado! Agora voce esta com um modificador de: " .. modificador[1])
            return 4
        end
    end    

    if continue == 4 then
        print("\n\nAo avancar, voce sente que esta em uma encruzilhada de destinos. A jornada fica mais sombria.")
        print("De repente, voce se depara com um portal gigante. Ele brilha intensamente, mas parece instavel.")
        if pontosDado <= 5 then
            print("\n\nVoce tenta atravessar o portal, mas ele colapsa no ultimo segundo.")
            print("Voce e sugado para um vazio sem fim.")
            print("VOCE MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 4
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("\n\nVoce atravessa o portal, mas uma forca mistica o ataca e suga sua energia vital.")
            print("Voce perde parte de sua forca espiritual.")
            modificador[1] = modificador[1] - 3
            print("Modificador drasticamente reduzido! Agora esta em: " .. modificador[1])
            return 5
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("\n\nO portal te leva a uma cidade flutuante em ruinas. Voce explora as ruas desertas.")
            print("No centro da cidade, uma torre colossal emana uma energia sinistra.")
            return 5
        elseif pontosDado > 16 then
            print("\n\nVoce atravessa o portal com sucesso e emerge em um mundo de luz brilhante.")
            print("Neste novo mundo, seres alados o recebem como um escolhido.")
            modificador[1] = modificador[1] + 3
            print("Modificador aumentado! Agora voce esta com um modificador de: " .. modificador[1])
            return 5
        end
    end    

    if continue == 5 then
        print("\n\nA jornada continua e voce sente que esta chegando perto do fim.")
        print("Uma voz em sua cabeca diz: 'Voce esta perto da verdade, mas a escuridao ainda pode te consumir.'")
        if pontosDado <= 5 then
            print("\n\nVoce e cercado por sombras que te envolvem completamente.")
            print("Sua visao fica turva, e voce desaparece na escuridao.")
            print("VOCE MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 5
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("\n\nVoce caminha ate encontrar um templo abandonado. Dentro, ha uma figura misteriosa que oferece uma escolha.")
            print("'Escolha o caminho da luz ou da sombra.'")
            print("Voce hesita, mas ao escolher, sente uma fraqueza se espalhar pelo seu corpo.")
            modificador[1] = modificador[1] - 1
            print("Seu modificador foi reduzido para: " .. modificador[1])
            return 6
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("\n\nVoce se encontra em uma batalha epica contra uma criatura colossal feita de pura sombra.")
            print("Com cada golpe, voce sente sua energia se esvair, mas persiste.")
            return 6
        elseif pontosDado > 16 then
            print("\n\nVoce desce a escadaria de um castelo dourado e encontra a Fonte da Eternidade.")
            print("Beber dela pode te conceder poder inimaginavel.")
            modificador[1] = modificador[1] + 4
            print("Modificador aumentado! Agora voce esta com um modificador de: " .. modificador[1])
            return 6
        end
    end
    
    if continue == 6 then
        print("\n\nVoce avanca por uma estrada tortuosa e chega a um deserto infindavel.")
        print("Uma tempestade de areia surge no horizonte, ameacando engolir tudo.")
        if pontosDado <= 5 then
            print("\n\nVoce e pego pela tempestade de areia e nao consegue mais ver ou respirar.")
            print("A areia te consome.")
            print("VOCE MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 6
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("\n\nVoce sobrevive a tempestade, mas se encontra perdido e desorientado.")
            print("Sua forca esta acabando.")
            modificador[1] = modificador[1] - 2
            print("Seu modificador foi reduzido para: " .. modificador[1])
            return 7
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("\n\nVoce atravessa o deserto e encontra um oasis escondido.")
            print("O oasis te da uma chance de recuperar parte de sua forca.")
            return 7
        elseif pontosDado > 16 then
            print("\n\nVoce evita a tempestade e encontra uma cidade perdida no deserto.")
            print("Os habitantes te saudam como o Salvador.")
            modificador[1] = modificador[1] + 2
            print("Modificador aumentado! Agora voce esta com um modificador de: " .. modificador[1])
            return 7
        end
    end    

    if continue == 7 then
        print("\n\nVoce chega a uma montanha negra, com lava correndo por suas encostas.")
        print("Ao pe da montanha, uma criatura de fogo emerge do magma, bloqueando seu caminho.")
        if pontosDado <= 5 then
            print("\n\nA criatura te incinera no primeiro golpe.")
            print("VOCE MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 7
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("\n\nVoce consegue escapar, mas nao sem antes se queimar gravemente.")
            modificador[1] = modificador[1] - 1
            print("Seu modificador foi reduzido para: " .. modificador[1])
            return 8
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("\n\nVoce enfrenta a criatura e, apos uma dura batalha, consegue derrota-la.")
            return 8
        elseif pontosDado > 16 then
            print("\n\nVoce invoca uma tempestade de agua que apaga a criatura e abre caminho pela montanha.")
            modificador[1] = modificador[1] + 3
            print("Modificador aumentado! Agora voce esta com um modificador de: " .. modificador[1])
            return 8
        end
    end    

    if continue == 8 then
        print("\n\nNo topo da montanha, voce encontra uma caverna iluminada por cristais brilhantes.")
        print("Dentro da caverna, um ser ancestral o aguarda. Sua presenca emana poder puro.")
        if pontosDado <= 5 then
            print("\n\nO ser ancestral te absorve em um piscar de olhos.")
            print("VOCE MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 8
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("\n\nVoce tenta enfrentar o ser, mas sua presenca te corrói de dentro para fora.")
            modificador[1] = modificador[1] - 3
            print("Seu modificador foi reduzido para: " .. modificador[1])
            return 9
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("\n\nVoce confronta o ser ancestral e resiste ao seu poder.")
            return 9
        elseif pontosDado > 16 then
            print("\n\nVoce usa a energia dos cristais para se fortalecer e derrotar o ser ancestral.")
            modificador[1] = modificador[1] + 4
            print("Modificador aumentado! Agora voce esta com um modificador de: " .. modificador[1])
            return 9
        end
    end
    
    if continue == 9 then
        print("\n\nCom a derrota do ser ancestral, voce se encontra diante de um trono vazio.")
        print("O trono e feito de ossos antigos, com runas brilhando em sua superficie.")
        if pontosDado <= 5 then
            print("\n\nVoce se aproxima do trono, mas e consumido por uma escuridao profunda.")
            print("VOCE MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 9
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("\n\nVoce senta no trono, mas seu corpo nao suporta o poder que ele carrega.")
            modificador[1] = modificador[1] - 4
            print("Seu modificador foi severamente reduzido para: " .. modificador[1])
            return 10
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("\n\nVoce assume o trono e sente uma conexao profunda com o mundo.")
            return 10
        elseif pontosDado > 16 then
            print("\n\nVoce assume o trono e o poder dos antigos deuses flui por voce.")
            modificador[1] = modificador[1] + 5
            print("Modificador aumentado! Agora voce esta com um modificador de: " .. modificador[1])
            return 10
        end
    end    

    if continue == 10 then
        print("\n\nFinalmente, voce chegou ao fim da sua jornada.")
        print("Com o poder do trono em suas maos, voce decide o destino do mundo.")
        if pontosDado <= 5 then
            print("\n\nVoce perde o controle do poder e o mundo e destruido em uma explosao cataclisma.")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            return 10
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("\n\nVoce tenta governar o mundo, mas sua fraqueza interior o consome.")
            print("O caos reina. Fim do jogo.")
            return 11
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("\n\nVoce governa o mundo com sabedoria, mas ha sacrificios.")
            print("O mundo continua, mas ha perdas irreparaveis. Fim do jogo.")
            return 11
        elseif pontosDado > 16 then
            print("\n\nVoce se torna o governante eterno de um novo mundo prospero e pacifico.")
            print("Fim do jogo. VOCE VENCEU!")
            return 11
        end
    end    
    return continue
end
