print("--- FILTRO DE NUMEROS ---")

function filtrarMaiores(tabela, limite)
    local filtrados = {} 
    for i = 1, #tabela do
        if tabela[i] > limite then
            table.insert(filtrados, tabela[i])
        end
    end
    return filtrados
end

print("Digite a quantidade de elementos (N):")
local n = tonumber(io.read())

local numeros = {}
for i = 1, n do
    print("Digite o elemento " .. i .. ":")
    table.insert(numeros, tonumber(io.read()))
end

print("Digite o valor limite (K):")
local k = tonumber(io.read())

local maiores = filtrarMaiores(numeros, k)

print("--- Elementos maiores que " .. k .. " ---")
for i = 1, #maiores do
    print(maiores[i])
end
