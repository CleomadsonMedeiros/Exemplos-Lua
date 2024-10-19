function por_valor(x)
    x = x + 1  -- Modifica apenas a cópia local
end

local a = 10
por_valor(a)
print(a)  -- Não muda!

-- Quando se passa um tabela, esta mesma é passada por referência
function por_referencia(t)
    t[1] = t[1] + 3
end

local tabela = {1, 2, 3}
por_referencia(tabela)
print(tabela[1])  -- Mudou!
