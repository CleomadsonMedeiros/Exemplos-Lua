--Fernanda Mirely Barbosa Souza
require("dado")
require("historia")

local quantidadeVidas = {}
local modificador = {}
modificador[1] = 0
quantidadeVidas[1] = 0

function EscolherDificuldade()
    print("Escolha a dificuldade:")
    print("1. Facil (2 chances)")
    print("2. Medio (1 chance)")
    print("3. Dificil (0 chances)")

    local dificuldade
    io.write("Digite o numero da dificuldade desejada: ")
    dificuldade = tonumber(io.read())

    if dificuldade == 1 then
        return 3
    elseif dificuldade == 2 then
        return 2
    elseif dificuldade == 3 then
        return 1
    end
end

function MensagemRolarDado()
    io.write("Aperte Enter para rolar o dado: ")
    local _ = io.read()
end

function Main()
    math.randomseed(os.time())

    io.write("Bem vindo ao RPG LuaSouls!\n")
    io.write("Por favor, antes de comecar sua jornada, digite seu nome: ")
    local nomeJogador = io.read()

    quantidadeVidas[1] = EscolherDificuldade()

    print("Ola, " .. nomeJogador .. ". Sua jornada começa agora!")
    print("Voce tem " .. quantidadeVidas[1] .. " chances para completar sua missao. Boa sorte e que os dados estejam a seu favor!")

    local continue = 0
    local pontosDado = 0 

    while quantidadeVidas[1] > 0 do
        
        MensagemRolarDado()
        pontosDado = RolarDado(20, modificador[1])
        print("Voce rolou o dado e obteve: " .. pontosDado)

        continue = DecidirCaminho(pontosDado, continue, quantidadeVidas, modificador)

        if quantidadeVidas[1] < 0 then
            print("Voce perdeu todas as chances! GAME OVER.")
            break
        end

        if continue == 11 then
            break
        end
    end

    print("Fim do LuaSouls")
end

Main()