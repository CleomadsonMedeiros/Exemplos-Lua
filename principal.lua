--Tipos e Checagem de Tipos (Primitivos, Compostos e Recursivos; Equivalência de Tipos)

local a = 10
local b = "Lua"
local c = {1, 2, 3}

print(type(a)) -- number
print(type(b)) -- string
print(type(c)) -- table (lista,mapa,estrutura de dados: pilhas, filas, matrizes,etc).

--Mostrando exemplos do uso do table
--Lista

local lista = {1, 2, 3, 4, 5}

-- Acessando valores por índices numéricos
print(lista[1]) -- 1
print(lista[3]) -- 3

--Mapa(dicionario)
local mapa = {
    nome = "Lua",
    ano = 1993
}


-- Abstração de Funções e Ordem das Funções

-- Acessando valores por chaves
print(mapa["nome"]) -- Lua
print(mapa.ano) -- 1993

function applyFunction(f, x)
    return f(x)
end

function square(n)
    return n * n
end

print(applyFunction(square, 5)) -- 25



--Estratégias de Avaliação (Lazy, Eager)

function f(x)
    print("f called")
    return x
end

function eagerEvaluation(x)
    return x * 2
end

function lazyEvaluation(x)
    return function() return x * 2 end
end

-- Eager evaluation
local eager = eagerEvaluation(5)
print(eager) -- 10

-- Lazy evaluation
local lazy = lazyEvaluation(5)
print(lazy()) -- 10


--Gerenciamento de memória (garbage collector)

local table1 = {1, 2, 3, 4}
table1 = nil -- Liberar a referência

collectgarbage() -- Forçar a coleta de lixo
print(collectgarbage("count")) -- Mostra memória usada (em KB)


--Polimorfismo(Sobrecarga e Paramétrico)
function add(a, b)
    if type(a) == "number" and type(b) == "number" then
        return a + b
    elseif type(a) == "string" and type(b) == "string" then
        return a .. b
    else
        error("Tipos incompatíveis")
    end
end

print(add(5, 10)) -- 15
print(add("Lua", "Script")) -- "LuaScript"



--Persistência de Dados 

-- Salvando dados
local file = io.open("data.txt", "w")
file:write("Salvando dados em Lua\n")
file:close()

-- Lendo dados
local file = io.open("data.txt", "r")
local content = file:read("*all")
print(content)
file:close()
