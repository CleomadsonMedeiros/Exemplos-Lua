-- Amanda de Jesus Melo
function RolarDado(...)
    local num_args = select("#", ...)  -- Conta quantos argumentos foram passados
    
    if num_args == 2 then
        local tipoDado, modificador = ...
        assert(tipoDado > 0 and tipoDado <= 20, "O dado deve ter entre 1 e 20 lados.")
        return math.random(1, tipoDado) + modificador -- Rola um único dado
    elseif num_args == 3 then
        local quantidade, tipoDado, modificador = ...
        assert(quantidade > 0, "A quantidade de dados deve ser maior que 0.")
        assert(tipoDado > 0 and tipoDado <= 20, "O dado deve ter entre 1 e 20 lados.")
        
        local soma = 0
        for i = 1, quantidade do
            soma = soma + math.random(1, tipoDado)
        end

        if type(modificador) == "number" then
            return soma + modificador  -- Adiciona o modificador à soma
        elseif type(modificador) == "string" and modificador:sub(-1) == "x" then
            local multiplicador = tonumber(modificador:sub(1, -2))
            return soma * multiplicador  -- Multiplica pelo modificador se for uma string
        else
            error("Modificador inválido. Use um número para soma ou uma string terminada em 'x' para multiplicação.")
        end
    else
        error("Número incorreto de parâmetros. Use 2 ou 3 parâmetros.")
    end
end