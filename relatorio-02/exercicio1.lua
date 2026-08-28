print("--- TABELA DE POTENCIAS ---")

function gerarTabelaPotencias(inicio, fim, base)
    
    for i = inicio, fim do
       
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
