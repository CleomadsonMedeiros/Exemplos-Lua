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

-- Acessando valores por chaves
print(mapa["nome"]) -- Lua
print(mapa.ano) -- 1993
