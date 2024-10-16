function DecidirCaminho(pontosDado, continue, quantidadeVidas, modificador)

    if continue == 0 then
        print("Você começa em uma cela de uma prisão sendo uma criatura sem esperança")
        print("Um cavalheiro lhe observa de cima e joga a chave para você")
        print("Sem entender, você pega a chave")
        print("Coincidentemente a chave é compatível com a porta da cela")
        print("Você decide girar a chave...")
        return 1
    end

    if continue == 1 then
        if pontosDado <= 2 then
            print("Parabéns, cúmulo da inutilidade, você fez um grande feito")
            print("A chave quebrou na tranca, e você passará o resto de sua vida nesta cela")
            print("VOCÊ MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 1
        else
            print("Você abre a porta e prossegue por um corredor úmido e estreito")
            print("Em sua frente você encontra uma escada e decide subi-la")
            print("Ao chegar em cima, você encontra uma fogueira")
            print("De repente, você escuta uma voz que diz: As fogueiras preservarão sua humanidade")
            print("Após ouvir a voz, você decide acender esta fogueira...")
            print("No mesmo instante você se sente revigorado!")
            print("Na frente da fogueira há uma porta, e então decide abrir")
            print("Você se depara com uma criatura gigante num formato de morcego segurando um grande martelo!")
            print("O que você fará?!")
            return 2
        end
    end

    if continue == 2 then
        if pontosDado <= 5 then
            print("A criatura te dá uma martelada e você morre.")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 2
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("A criatura te acerta de raspão, você sai ferido mas consegue escapar.")
            print("Seu corpo, porém, foi gravemente ferido.")
            modificador[1] = modificador[1] - 1
            print("Modificador diminuído! Agora você está com um modificador de: " .. modificador[1])
            return 3
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("Você desvia do ataque da criatura com maestria, e escapa!")
            return 3
        elseif pontosDado > 16 then
            print("Por algum motivo de sorte, a criatura acerta o chão, e o mesmo se quebra")
            print("Lançando a criatura para o abismo")
            print("Você sente uma onda de poder por ter escapado de forma tão improvável.")
            modificador[1] = modificador[1] + 1
            print("Modificador aumentado! Agora você está com um modificador de: " .. modificador[1])
            return 4
        end
    end

    if continue == 3 then
        print("Ao atravessar o portão, você chega em um lugar pacífico, rodeado de muralhas e vegetação")
        print("Ao prosseguir seu caminho, você se depara com um ser humano, e ele lhe diz que o nome deste lugar se chama:")
        print("Firelink.")
        print("A partir deste lugar, você se depará com dois caminhos, uma estrada para a esquerda, e escadas para baixo")
        if pontosDado <= 5 then
            print("Você decide ir para o caminho de baixo...")
            print("Ao descer as escadas, você sente suas pernas tremerem, neste momento você se dá conta de uma coisa:")
            print("VOCÊ É SEDENTÁRIO!")
            print("Você não aguenta mais descer as escadas, suas pernas fraquejam, você cai e morre kkkkkkkk")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 3
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("Você decide ir para o caminho da esquerda")
            print("No meio do caminho, um animal selvagem surge do nada e o ataca.")
            print("Você sobrevive, mas está gravemente ferido!")
            modificador[1] = modificador[1] - 2
            print("Seu modificador foi severamente reduzido! Agora está em: " .. modificador[1])
            return 4
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("Você escolhe o caminho de baixo e desce as escadas com segurança.")
            print("No subsolo, você encontra uma antiga cripta. Há uma espada luminosa fincada no chão.")
            print("Você se aproxima da espada, sentindo um poder incrível emanando dela.")
            return 4
        elseif pontosDado > 16 then
            print("Você ignora os dois caminhos e, com um impulso repentino, escala uma parede alta.")
            print("Ao chegar no topo, encontra um altar antigo com símbolos estranhos.")
            print("Você toca no altar e sente um grande poder fluindo em você.")
            modificador[1] = modificador[1] + 2
            print("Modificador aumentado! Agora você está com um modificador de: " .. modificador[1])
            return 4
        end
    end

    if continue == 4 then
        print("Ao avançar, você sente que está em uma encruzilhada de destinos. A jornada fica mais sombria.")
        print("De repente, você se depara com um portal gigante. Ele brilha intensamente, mas parece instável.")
        if pontosDado <= 5 then
            print("Você tenta atravessar o portal, mas ele colapsa no último segundo.")
            print("Você é sugado para um vazio sem fim.")
            print("VOCÊ MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 4
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("Você atravessa o portal, mas uma força mística o ataca e suga sua energia vital.")
            print("Você perde parte de sua força espiritual.")
            modificador[1] = modificador[1] - 3
            print("Modificador drasticamente reduzido! Agora está em: " .. modificador[1])
            return 5
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("O portal te leva a uma cidade flutuante em ruínas. Você explora as ruas desertas.")
            print("No centro da cidade, uma torre colossal emana uma energia sinistra.")
            return 5
        elseif pontosDado > 16 then
            print("Você atravessa o portal com sucesso e emerge em um mundo de luz brilhante.")
            print("Neste novo mundo, seres alados o recebem como um escolhido.")
            modificador[1] = modificador[1] + 3
            print("Modificador aumentado! Agora você está com um modificador de: " .. modificador[1])
            return 5
        end
    end

    if continue == 5 then
        print("A jornada continua e você sente que está chegando perto do fim.")
        print("Uma voz em sua cabeça diz: 'Você está perto da verdade, mas a escuridão ainda pode te consumir.'")
        if pontosDado <= 5 then
            print("Você é cercado por sombras que te envolvem completamente.")
            print("Sua visão fica turva, e você desaparece na escuridão.")
            print("VOCÊ MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 5
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("Você caminha até encontrar um templo abandonado. Dentro, há uma figura misteriosa que oferece uma escolha.")
            print("'Escolha o caminho da luz ou da sombra.'")
            print("Você hesita, mas ao escolher, sente uma fraqueza se espalhar pelo seu corpo.")
            modificador[1] = modificador[1] - 1
            print("Seu modificador foi reduzido para: " .. modificador[1])
            return 6
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("Você se encontra em uma batalha épica contra uma criatura colossal feita de pura sombra.")
            print("Com cada golpe, você sente sua energia se esvair, mas persiste.")
            return 6
        elseif pontosDado > 16 then
            print("Você desce a escadaria de um castelo dourado e encontra a Fonte da Eternidade.")
            print("Beber dela pode te conceder poder inimaginável.")
            modificador[1] = modificador[1] + 4
            print("Modificador aumentado! Agora você está com um modificador de: " .. modificador[1])
            return 6
        end
    end

    if continue == 6 then
        print("Você avança por uma estrada tortuosa e chega a um deserto infindável.")
        print("Uma tempestade de areia surge no horizonte, ameaçando engolir tudo.")
        if pontosDado <= 5 then
            print("Você é pego pela tempestade de areia e não consegue mais ver ou respirar.")
            print("A areia te consome.")
            print("VOCÊ MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 6
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("Você sobrevive à tempestade, mas se encontra perdido e desorientado.")
            print("Sua força está acabando.")
            modificador[1] = modificador[1] - 2
            print("Seu modificador foi reduzido para: " .. modificador[1])
            return 7
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("Você atravessa o deserto e encontra um oásis escondido.")
            print("O oásis te dá uma chance de recuperar parte de sua força.")
            return 7
        elseif pontosDado > 16 then
            print("Você evita a tempestade e encontra uma cidade perdida no deserto.")
            print("Os habitantes te saúdam como o Salvador.")
            modificador[1] = modificador[1] + 2
            print("Modificador aumentado! Agora você está com um modificador de: " .. modificador[1])
            return 7
        end
    end

    if continue == 7 then
        print("Você chega a uma montanha negra, com lava correndo por suas encostas.")
        print("Ao pé da montanha, uma criatura de fogo emerge do magma, bloqueando seu caminho.")
        if pontosDado <= 5 then
            print("A criatura te incinera no primeiro golpe.")
            print("VOCÊ MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 7
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("Você consegue escapar, mas não sem antes se queimar gravemente.")
            modificador[1] = modificador[1] - 1
            print("Seu modificador foi reduzido para: " .. modificador[1])
            return 8
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("Você enfrenta a criatura e, após uma dura batalha, consegue derrotá-la.")
            return 8
        elseif pontosDado > 16 then
            print("Você invoca uma tempestade de água que apaga a criatura e abre caminho pela montanha.")
            modificador[1] = modificador[1] + 3
            print("Modificador aumentado! Agora você está com um modificador de: " .. modificador[1])
            return 8
        end
    end

    if continue == 8 then
        print("No topo da montanha, você encontra uma caverna iluminada por cristais brilhantes.")
        print("Dentro da caverna, um ser ancestral o aguarda. Sua presença emana poder puro.")
        if pontosDado <= 5 then
            print("O ser ancestral te absorve em um piscar de olhos.")
            print("VOCÊ MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 8
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("Você tenta enfrentar o ser, mas sua presença te corrói de dentro para fora.")
            modificador[1] = modificador[1] - 3
            print("Seu modificador foi reduzido para: " .. modificador[1])
            return 9
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("Você confronta o ser ancestral e resiste ao seu poder.")
            return 9
        elseif pontosDado > 16 then
            print("Você usa a energia dos cristais para se fortalecer e derrotar o ser ancestral.")
            modificador[1] = modificador[1] + 4
            print("Modificador aumentado! Agora você está com um modificador de: " .. modificador[1])
            return 9
        end
    end

    if continue == 9 then
        print("Com a derrota do ser ancestral, você se encontra diante de um trono vazio.")
        print("O trono é feito de ossos antigos, com runas brilhando em sua superfície.")
        if pontosDado <= 5 then
            print("Você se aproxima do trono, mas é consumido por uma escuridão profunda.")
            print("VOCÊ MORREU!")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            print("Voce perdeu uma chance! Restam " .. quantidadeVidas[1] .. " chances. Cuidado!")
            return 9
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("Você senta no trono, mas seu corpo não suporta o poder que ele carrega.")
            modificador[1] = modificador[1] - 4
            print("Seu modificador foi severamente reduzido para: " .. modificador[1])
            return 10
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("Você assume o trono e sente uma conexão profunda com o mundo.")
            return 10
        elseif pontosDado > 16 then
            print("Você assume o trono e o poder dos antigos deuses flui por você.")
            modificador[1] = modificador[1] + 5
            print("Modificador aumentado! Agora você está com um modificador de: " .. modificador[1])
            return 10
        end
    end

    if continue == 10 then
        print("Finalmente, você chegou ao fim da sua jornada.")
        print("Com o poder do trono em suas mãos, você decide o destino do mundo.")
        if pontosDado <= 5 then
            print("Você perde o controle do poder e o mundo é destruído em uma explosão cataclísmica.")
            quantidadeVidas[1] = quantidadeVidas[1] - 1
            return 10
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("Você tenta governar o mundo, mas sua fraqueza interior o consome.")
            print("O caos reina. Fim do jogo.")
            return 11
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("Você governa o mundo com sabedoria, mas há sacrifícios.")
            print("O mundo continua, mas há perdas irreparáveis. Fim do jogo.")
            return 11
        elseif pontosDado > 16 then
            print("Você se torna o governante eterno de um novo mundo próspero e pacífico.")
            print("Fim do jogo. VOCÊ VENCEU!")
            return 11
        end
    end
    return continue
end
