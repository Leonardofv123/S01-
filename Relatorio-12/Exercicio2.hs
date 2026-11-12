pesoMaximo :: Double
pesoMaximo = 5.0


data Encomenda = Encomenda
  { destinatario :: String
  , peso         :: Double
  , frete        :: Double
  }

descrever :: Encomenda -> String
descrever e =
  destinatario e ++ " - " ++ show (peso e) ++ " kg - R$ " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas = filter (\e -> peso e <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum (map frete encomendas)

main :: IO ()
main = do
  let encomendas =
        [ Encomenda "Osono" 2.5 15.0
        , Encomenda "Madame da torta de arenque" 4.0 20.0
        , Encomenda "Tombo" 7.5 30.0
        , Encomenda "Ursula" 1.2 10.0
        , Encomenda "Relojoeiro" 9.0 35.0
        ]
  let cabem = cabemNaVassoura encomendas

  putStrLn "--- Encomendas do dia ---"
  mapM_ putStrLn (map descrever encomendas)
  putStrLn "--- Cabem na vassoura ---"
  mapM_ putStrLn (map descrever cabem)
  putStrLn ("Total de fretes: R$ " ++ show (totalDeFretes cabem))
