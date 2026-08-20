' ------------------------------------------------------------
Dim pinCorreto As Integer
Dim pinDigitado As Integer

pinCorreto = 4321

Print "--- VALIDACAO DE PIN ---"
Input "Digite o PIN de acesso: ", pinDigitado

' Enquanto o PIN estiver incorreto, o bloco se repete
Do While pinDigitado <> pinCorreto
    Print "PIN invalido. Tente novamente."
    Input "Digite o PIN de acesso: ", pinDigitado
Loop

Print "Transacao autorizada!"
Sleep
