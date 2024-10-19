-- Exemplo de corrotina
local co = coroutine.create(function()
    for i = 1, 5 do
        print("Corrotina rodando:", i)
        coroutine.yield()  -- Pausa a execução da corrotina
    end
end)

-- Após yield, é pausada a execução daquela função, com o resume é possível continuar. É útil para muitas coisas.
-- Exemplo: Animações de ataque de determinado inimigo em algum jogo, essa animação pode ser cancelada/pausada a qualquer momento pela corotina.
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
-- Pode se observar que será printado apenas de 1 a 3, pois foi dado 3 resumes, e não 5 para que todas as corotinas fossem despausadas.
