Dim As Integer pinCorreto, pinDigitado

pinCorreto = 4321

Input "Digite o PIN de acesso: ", pinDigitado

Do While pinDigitado <> pinCorreto
    Print "PIN invalido. Tente novamente."
    Input "Digite o PIN de acesso: ", pinDigitado
Loop

Print "Transacao autorizada!"
