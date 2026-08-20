# Relatorio de uso de IA - Exercicio 02

Nome completo: Leonardo Fabricio Vieira Fernandes
Matricula: 356

## Historico de prompts

**Prompt 1:** "nesse exercicio do pin, eu tenho que ficar pedindo pro usuario digitar de novo enquanto ele errar, como eu faço isso em loop no basic sem travar pedindo so uma vez?"

**Resposta obtida:** A logica usa Do While comparando pinDigitado <> pinCorreto. O ponto importante e que o Input precisa aparecer duas vezes no codigo: uma vez antes do loop (para ter um valor inicial pra comparar) e outra vez dentro do loop (para capturar uma nova tentativa a cada iteracao). Se o Input estiver so dentro do Do While, a condicao nunca é reavaliada com um valor novo depois do primeiro Print de erro, e se estiver so fora, o loop roda uma vez e nunca mais pede nada.

Relatorio critico

Essa foi a parte que mais me confundiu , eu tentei colocar o Input so uma vez, dentro do loop, e o programa nao se comportava do jeito esperado. A explicacao de que precisa ler antes e dentro do loop resolveu.


Eu aprendi que em estruturas de repeticao condicionadas por entrada do usuario (Do While/While), a leitura do valor geralmente precisa acontecer tanto antes do loop comecar quanto dentro dele, pra condicao ser reavaliada com dado novo a cada volta.
