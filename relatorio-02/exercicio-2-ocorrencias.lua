print("--- CONTADOR DE OCORRENCIAS ---")

function contarOcorrencias(tabela, alvo)
    local total = 0
    for i = 1, #tabela do
        if tabela[i] == alvo then
            total = total + 1
        end
    end
    return total 
end

print("Digite a quantidade de elementos (N):")
local n = tonumber(io.read())

local numeros = {}
for i = 1, n do
    print("Digite o elemento " .. i .. ":")
    table.insert(numeros, tonumber(io.read()))
end

print("Digite o numero X a ser buscado:")
local x = tonumber(io.read())

local ocorrencias = contarOcorrencias(numeros, x)
print("O numero " .. x .. " aparece " .. ocorrencias .. " vezes na tabela.")
