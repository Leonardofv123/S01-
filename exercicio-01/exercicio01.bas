Dim As Single peso, agua, meta

Input "Digite o peso (kg): ", peso
Input "Quanto de agua ja ingeriu hoje (ml): ", agua

meta = peso * 35

If agua >= meta Then
    Print "Meta atingida!"
Else
    Print "Meta nao atingida"
End If
