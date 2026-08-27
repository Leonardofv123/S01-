-- ============================================
-- EXERCICIO 4 - ANALISADOR DE NUMEROS
-- ============================================

print("--- ANALISADOR DE NUMEROS ---")

-- Subfuncoes: cada uma faz uma coisa so
function calcularMedia(a, b)
    return (a + b) / 2
end

function encontrarMaior(a, b)
    if a > b then
        return a
    else
        return b
    end
end

function calcularDiferencaAbsoluta(a, b)
    -- sempre devolve o valor positivo, por isso inverte a conta quando b e maior
    if a > b then
        return a - b
    else
        return b - a
    end
end

-- Funcao principal: decide qual subfuncao chamar
function analisarNumeros(n1, n2, operacao)
    if operacao == "media" then
        return calcularMedia(n1, n2)
    elseif operacao == "maior" then
        return encontrarMaior(n1, n2)
    elseif operacao == "diferenca" then
        return calcularDiferencaAbsoluta(n1, n2)
    else
        return "Operacao invalida!"
    end
end

print("Digite o primeiro numero:")
local n1 = tonumber(io.read())
print("Digite o segundo numero:")
local n2 = tonumber(io.read())
print('Digite a operacao ("media", "maior" ou "diferenca"):')
local operacao = io.read()

print("Resultado: " .. analisarNumeros(n1, n2, operacao))
