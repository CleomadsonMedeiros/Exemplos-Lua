Button = {
    super = { Shape, EventResponser }
}


Button.__index = function (t, k)
    local class
    for _, class in ipairs(Button.super) do
        if class[k] then return class[k] end
    end
end

-- Código feito por Rodrigo Cacilhas