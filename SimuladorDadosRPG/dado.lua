-- Amanda de Jesus Melo
function RolarDado(tipoDado, modificador)
    assert(tipoDado > 0 and tipoDado <= 20, "O dado deve ter entre 1 e 20 lados.")
    return math.random(1, tipoDado) + modificador
end

function RolarMultiplosDados(quantidade, tipoDado, modificador)
    assert(quantidade > 0, "A quantidade de dados deve ser maior que 0.")
    assert(tipoDado > 0 and tipoDado <= 20, "O dado deve ter entre 1 e 20 lados.")

    local soma = 0
    for i = 1, quantidade do
        soma = soma + RolarDado(tipoDado)
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