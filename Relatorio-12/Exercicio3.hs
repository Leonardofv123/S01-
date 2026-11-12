data Esboco = Esboco
  { titulo  :: String
  , tecnica :: String
  , horas   :: Int
  }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente []    = "O caderno está vazio."
esbocoMaisRecente (e:_) = titulo e ++ " (" ++ tecnica e ++ ")"

contarEsbocos :: [Esboco] -> Int
contarEsbocos []     = 0
contarEsbocos (_:es) = 1 + contarEsbocos es

horasDesenhando :: [Esboco] -> Int
horasDesenhando []     = 0
horasDesenhando (e:es) = horas e + horasDesenhando es

main :: IO ()
main = do
  let caderno =
        [ Esboco "Torre em ruínas" "nanquim" 4
        , Esboco "Criatura do pântano" "carvão" 3
        , Esboco "Floresta à noite" "grafite" 5
        ]

  putStrLn (esbocoMaisRecente caderno)
  print (contarEsbocos caderno)
  print (horasDesenhando caderno)
  putStrLn (esbocoMaisRecente [])

  let cadernoNovo = Esboco "Lobo de duas cabeças" "nanquim" 6 : caderno

  putStrLn (esbocoMaisRecente cadernoNovo)
  print (contarEsbocos cadernoNovo)
  putStrLn (esbocoMaisRecente caderno)
  print (contarEsbocos caderno)

  
