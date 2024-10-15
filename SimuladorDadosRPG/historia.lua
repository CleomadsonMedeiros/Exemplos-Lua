-- Cleomadson Dias Santos Medeiros
function DecidirCaminho(pontosDado, continue, quantidadeContinues, modificador)
    assert(quantidadeContinues >= 0, "Não há mais continues! GAME OVER")

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
            quantidadeContinues[1] = quantidadeContinues[1] - 1
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
            quantidadeContinues[1] = quantidadeContinues[1] - 1
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("A criatura te acerta de raspão, você sai ferido mas consegue escapar")
            modificador[1] = -1
            return 3
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("Você desvia do ataque da criatura com maestria, e escapa!")
            return 3
        elseif pontosDado > 16 then
            print("Por algum motivo de sorte, a criatura acerta o chão, e o mesmo se quebra")
            print("Lançando a criatura para o abismo")
            print("Com um grande buraco na sala, você dá a volta nele, e continua sua jornada atravessando um portão")
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
        elseif pontosDado > 5 and pontosDado <= 11 then
            print("A criatura te acerta de raspão, você sai ferido mas consegue escapar")
            modificador[1] = -1
            return 3
        elseif pontosDado > 11 and pontosDado <= 15 then
            print("Você desvia do ataque da criatura com maestria, e escapa!")
            return 3
        elseif pontosDado > 16 then
            print("Por algum motivo de sorte, a criatura acerta o chão, e o mesmo se quebra")
            print("Lançando a criatura para o abismo")
            print("Com um grande buraco na sala, você dá a volta nele, e continua sua jornada atravessando um portão")
            return 4
        end
    end

    if continue == 4 then
        
    end
end