-- ============================================
-- EXERCICIO 1 - TABELA DE POTENCIAS
-- ============================================

print("--- TABELA DE POTENCIAS ---")

function gerarTabelaPotencias(inicio, fim, base)
    -- i comeca em 'inicio' e vai ate 'fim', igual ao contador de intervalo
    for i = inicio, fim do
        -- math.floor tira o ".0" que o Lua coloca no resultado da potencia
        local resultado = math.floor(base ^ i)
        print(base .. " ^ " .. i .. " = " .. resultado)
    end
end

print("Digite o expoente inicial (M):")
local m = tonumber(io.read())
print("Digite o expoente final (N):")
local n = tonumber(io.read())
print("Digite a base:")
local base = tonumber(io.read())

if m and n and base then
    gerarTabelaPotencias(m, n, base)
else
    print("Entrada invalida! Digite apenas numeros.")
end
