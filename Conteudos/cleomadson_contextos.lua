local x = 10  -- Variável local, visível apenas neste bloco
y = 20        -- Variável global, visível em qualquer lugar

function escopo()
    local x = 5  -- Este 'x' é local apenas para esta função
    print(x)     -- 5
    print(y)     -- 20 (global)
end

escopo()
print(x)  -- 10 (global)
print(y)  -- 20 (global)
