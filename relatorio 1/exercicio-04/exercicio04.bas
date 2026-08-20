' ------------------------------------------------------------
Dim distancia As Double
Dim tempo As Double
Dim pace As Double

Print "--- PACE MEDIO DE CORRIDA ---"
Input "Distancia percorrida (km): ", distancia
Input "Tempo total gasto (minutos): ", tempo

pace = tempo / distancia

Print "Pace medio: "; pace; " min/km"
Sleep
