data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " - R$ " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise        = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido leite (Cafe _ preco _) =
  if leite
    then preco + 2.0
    else preco

main :: IO ()
main = do
  let blueMountain = Cafe "Blue Mountain" 12.0 3
  let blendDaCasa = Cafe "Blend da Casa" 8.5 6
  let kilimanjaro = Cafe "Kilimanjaro" 10.0 9

  putStrLn (descrever blueMountain)
  putStrLn (forca blueMountain)
  putStrLn (descrever blendDaCasa)
  putStrLn (forca blendDaCasa)
  putStrLn (descrever kilimanjaro)
  putStrLn (forca kilimanjaro)

  print (precoDoPedido True blendDaCasa)
  print (precoDoPedido False blendDaCasa)
