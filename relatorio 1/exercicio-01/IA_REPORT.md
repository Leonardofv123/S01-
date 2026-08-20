 Relatorio de uso de IA - Exercicio 01

Nome completo: Leonardo Fabricio Vieira Fernandes
Matricula: 356

 Historico de prompts

**Prompt 1:** "to tentando fazer esse exercicio de agua no onecompiler mas nao sei nem que versao de basic ele roda, o slide mostra aquele basic antigo numerado tipo 10 PRINT 20 LET mas isso parece bem diferente, como eu faço pra pedir peso e agua do usuario e comparar com a meta sem deixar nada fixo no codigo?"

**Resposta obtida:** O OneCompiler roda FreeBASIC, uma versao mais moderna que dispensa numeracao de linha. A entrada do usuario deve ser feita com o comando Input, que interrompe a execucao ate o usuario digitar um valor. Para o calculo da meta, a variavel peso deve ser declarada como tipo Single (ponto flutuante), pois valores como 72.5 kg exigem precisao decimal — usar Integer arredondaria o valor e comprometeria o resultado. A logica condicional foi implementada com If/Else, comparando a quantidade ingerida com a meta calculada (peso multiplicado por 35) atraves do operador >=, que cobre tanto o caso de igualdade quanto o de superacao da meta.

 Relatorio critico

A resposta ajudou porque eu realmente nao sabia que existiam variantes tao diferentes de BASIC imaginava que ia ser aquele formato numerado do slide. Entender que o OneCompiler usa FreeBASIC evitou que eu perdesse tempo tentando escrever um codigo no formato errado.

A duvida sobre Single vs Integer tambem foi resolvida de forma direta eu nem tinha pensado que Integer podia truncar o peso, entao esse detalhe evitou um bug silencioso (o programa rodaria sem erro, mas com resultado errado sabe).

Eu aprendi quw antes de sair escrevendo codigo num compilador novo, vale a pena confirmar qual dialeto/versao da linguagem ele usa, e prestar atencao no tipo de dado escolhido para cada variavel, principalmente quando o enunciado envolve valores que naturalmente tem casa decimal.
