function rolarDado(tipoDado)
    assert(tipoDado > 0 and tipoDado <= 20, "O dado deve ter entre 1 e 20 lados.")
    return math.random(1, tipoDado)
end

function rolarMultiplosDados(quantidade, tipoDado, modificador)
    assert(quantidade > 0, "A quantidade de dados deve ser maior que 0.")
    assert(tipoDado > 0 and tipoDado <= 20, "O dado deve ter entre 1 e 20 lados.")
    
    local soma = 0
    for i = 1, quantidade do
        soma = soma + rolarDado(tipoDado)
    end
    
    if type(modificador) == "number" then
        return soma + modificador
    elseif type(modificador) == "string" and modificador:sub(-1) == "x" then
        local multiplicador = tonumber(modificador:sub(1, -2))
        return soma * multiplicador
    else
        error("Modificador inválido. Use um número para soma ou uma string terminada em 'x' para multiplicação.")
    end
end

math.randomseed(os.time())
for i = 1, 10 do
    print(rolarDado(6))
    print(rolarDado(3,6,x2))
end

-- Função para decidir o caminho e prosseguir na história
function decidirCaminho(pontosDado, continue, quantidadeContinues)
    assert(quantidadeContinues >= 0, "Não há mais continues! GAME OVER")
    
    -- Introdução
    if continue == 0 then
        print("A Chama Primordial está se apagando, e o mundo está à beira do colapso.")
        print("A Chama Primordial está se apagando, e o mundo está à beira do colapso.")
        print("Você é um Não-Morto. Sua missão é recuperar a alma antiga.")
        print("Diante de você, há três passagens: à esquerda, à direita e à frente.")
        print("Role o dado (1-20) para decidir seu caminho!")
        return 1 -- Ponto de verificação
    end

    -- Caminho escolhido
    if continue == 1 then
        if pontosDado >= 1 and pontosDado <= 5 then
            print("Você entra no Caminho da Direita.")
            print("As paredes estão cobertas de teias de aranha e o teto começa a desmoronar!")
            print("Role o dado para escapar!")
            return 2 -- Ponto de verificação
        elseif pontosDado >= 6 and pontosDado <= 10 then
            print("Você avança pelo Caminho da Frente.")
            print("Encontra um Cavaleiro Caído pronto para atacar!")
            print("Role o dado para a batalha!")
            return 3 -- Ponto de verificação
        elseif pontosDado >= 11 and pontosDado <= 15 then
            print("Você toma o Caminho da Esquerda.")
            print("Desce uma escadaria e encontra uma neblina densa.")
            print("Role o dado para atravessar a neblina!")
            return 4 -- Ponto de verificação
        elseif pontosDado >= 16 and pontosDado <= 20 then
            print("Você encontra um corredor secreto e uma porta de pedra.")
            print("Role o dado para abrir a porta!")
            return 5 -- Ponto de verificação
        end
    end

    -- Ações dos caminhos
    if continue == 2 then
        if pontosDado >= 1 and pontosDado <= 10 then
            print("O teto desaba, e você é esmagado! GAME OVER.")
            quantidadeContinues = quantidadeContinues - 1
            return quantidadeContinues
        elseif pontosDado >= 11 and pontosDado <= 20 then
            print("Você consegue escapar e encontra um baú com uma armadura!")
            print("Você continua sua jornada.")
            return 6 -- Ponto de verificação
        end
    end

    if continue == 3 then
        if pontosDado >= 1 and pontosDado <= 8 then
            print("O Cavaleiro Caído te derrota em batalha. GAME OVER.")
            quantidadeContinues = quantidadeContinues - 1
            return quantidadeContinues
        elseif pontosDado >= 9 and pontosDado <= 15 then
            print("Você luta bravamente, mas sai ferido.")
            return 6 -- Ponto de verificação
        elseif pontosDado >= 16 and pontosDado <= 20 then
            print("Você derrota o Cavaleiro com habilidade!")
            return 6 -- Ponto de verificação
        end
    end

    if continue == 4 then
        if pontosDado >= 1 and pontosDado <= 8 then
            print("As criaturas espectrais te consomem! GAME OVER.")
            quantidadeContinues = quantidadeContinues - 1
            return quantidadeContinues
        elseif pontosDado >= 9 and pontosDado <= 14 then
            print("Você atravessa a neblina, mas é ferido.")
            return 6 -- Ponto de verificação
        elseif pontosDado >= 15 and pontosDado <= 20 then
            print("Você encontra um Estus Flask!")
            return 6 -- Ponto de verificação
        end
    end

    if continue == 5 then
        if pontosDado >= 1 and pontosDado <= 10 then
            print("A porta se fecha e você cai em um abismo! GAME OVER.")
            quantidadeContinues = quantidadeContinues - 1
            return quantidadeContinues
        elseif pontosDado >= 11 and pontosDado <= 20 then
            print("Você abre a porta e encontra um baú dourado.")
            return 6 -- Ponto de verificação
        end
    end

    -- Conclusão
    if continue == 6 then
        print("Você chegou à sala final e encontra o Guardião das Cinzas.")
        print("Role o dado para a batalha final!")
        return 7 -- Ponto de verificação
    end

    if continue == 7 then
        if pontosDado >= 1 and pontosDado <= 5 then
            print("O Guardião te derrota com facilidade. GAME OVER.")
            quantidadeContinues = quantidadeContinues - 1
            return quantidadeContinues
        elseif pontosDado >= 6 and pontosDado <= 10 then
            print("Você sobrevive, mas sai ferido da batalha.")
            return 8 -- Ponto de verificação
        elseif pontosDado >= 11 and pontosDado <= 15 then
            print("A batalha é intensa, mas você fere o Guardião!")
            return 8 -- Ponto de verificação
        elseif pontosDado >= 16 and pontosDado <= 20 then
            print("Você derrota o Guardião e reivindica a Alma Antiga!")
            print("O que você fará com ela? Linkar a chama ou deixá-la apagar?")
            return 9 -- Ponto de verificação
        end
    end

    if continue == 8 then
        print("O que você fará? Linkar a chama (role o dado) ou deixá-la apagar?")
        return 9 -- Ponto de verificação
    end

    if continue == 9 then
        if pontosDado >= 1 and pontosDado <= 10 then
            print("Você deixa a chama apagar. O mundo cai na escuridão eterna.")
            print("Fim da jornada.")
        elseif pontosDado >= 11 and pontosDado <= 20 then
            print("Você sacrifica sua alma para reacender a chama.")
            print("Você prolonga a era da luz, mas se torna um ser esquecido.")
            print("Fim da jornada.")
        end
    end
end

local continue = 0
local quantidadeContinues = 3 -- Defina o número de continues
local pontosDado = math.random(1, 20) -- Simule o rolar do dado

while continue >= 0 do
    quantidadeContinues = decidirCaminho(pontosDado, continue, quantidadeContinues)
    continue = continue + 1
    pontosDado = math.random(1, 20) -- Simule o próximo rolar do dado
end