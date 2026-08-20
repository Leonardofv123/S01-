Dim agua As Single
Dim meta As Single

Print "--- META DE AGUA ---"
Input "Digite o peso (kg): ", peso
Input "Quanto de agua ja ingeriu hoje (ml): ", agua

meta = peso * 35

If agua >= meta Then
    Print "Meta atingida!"
Else
    Print "Meta nao atingida"
End If
Sleep
