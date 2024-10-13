local metatabela = {
    __add = function(tabela1, tabela2)
        return 
        {
        x = tabela1.x + tabela2.x,
        y = tabela1.y + tabela2.y
        }
    end
}

local xy1 = {x = 1, y = 2}
local xy2 = {x = 3, y = 4}

setmetatable(xy1, metatabela)
setmetatable(xy2, metatabela) -- Segundo para fins de explicação, é necessária apenas um setmetatable

local resultado = xy1 + xy2

print(resultado.x, resultado.y) -- Saída: 4 6