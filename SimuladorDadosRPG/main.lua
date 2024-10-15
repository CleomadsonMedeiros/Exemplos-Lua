--Fernanda Mirely Barbosa Souza
require("dado")
require("historia")

local quantidadeContinues = {}
local modificador = {}

function EscolherDificuldade()
    print("Escolha a dificuldade:")
    print("1. Fácil (2 chances)")
    print("2. Médio (1 chance)")
    print("3. Difícil (0 chances)")

    local dificuldade
    repeat
        io.write("Digite o número da dificuldade desejada: ")
        dificuldade = tonumber(io.read())
    until dificuldade == 1 or dificuldade == 2 or dificuldade == 3

    if dificuldade == 1 then
        return 2
    elseif dificuldade == 2 then
        return 1
    elseif dificuldade == 3 then
        return 0
    end
end

function MensagemRolarDado()
    io.write("Digite qualquer tecla para rolar o dado: ")
    _ = io.read()
end

function Main()
    math.randomseed(os.time())

    local imagemASCII = [[
                      /^--^\     /^--^\     /^--^\
                      \____/     \____/     \____/
                     /      \   /      \   /      \
KAT                 |        | |        | |        |
                     \__  __/   \__  __/   \__  __/
|^|^|^|^|^|^|^|^|^|^|^|^\ \^|^|^|^/ /^|^|^|^|^\ \^|^|^|^|^|^|^|^|^|^|^|^|
| | | | | | | | | | | | |\ \| | |/ /| | | | | | \ \ | | | | | | | | | | |
########################/ /######\ \###########/ /#######################
| | | | | | | | | | | | \/| | | | \/| | | | | |\/ | | | | | | | | | | | |
|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
]]
    print(imagemASCII)

    io.write("Bem vindo ao RPG LuaSouls!\n")
    io.write("Por favor, antes de comecar sua jornada, digite seu nome: ")
    local nomeJogador = io.read()

    quantidadeContinues[1] = escolherDificuldade()

    print("Olá, " .. nomeJogador .. ". Sua jornada começa agora!")
    print("Você tem " ..
    quantidadeContinues[1] .. " chances para completar sua missao. Boa sorte e que os dados estejam a seu favor!")

    local continue = 0
    local pontosDado

    while quantidadeContinues[1] >= 0 do
        if MensagemRolarDado() then
            pontosDado = RolarDado(20)
            print("Você rolou o dado e obteve: " .. pontosDado)
        end

        continue = DecidirCaminho(pontosDado, continue, quantidadeContinues)

        if(quantidadeContinues[1] < 2) then
            print("Voce perdeu uma chance! Restam " .. quantidadeContinues[1] .. " chances. Cuidado!")
        end

        if quantidadeContinues[1] == 0 then
            print("Voce perdeu todas as chances! GAME OVER.")
            break
        end
    end

    if quantidadeContinues[1] >= 0 then
        print("Parabens, " .. nomeJogador .. "! Voce completou sua jornada!")
    end
end

Main()