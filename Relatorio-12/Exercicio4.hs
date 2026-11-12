data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor   :: Double
  , etapa   :: Etapa
  }

descrever :: Atendimento -> String
descrever a = cliente a ++ " - " ++ servico a ++ " - " ++ show (etapa a)

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\a -> etapa a == Concluido) atendimentos))

main :: IO ()
main = do
  let deusDoRio = Atendimento "Deus do Rio" "Banho de ervas" 300.0 NoBanho
  let semRosto = Atendimento "Sem Rosto" "Banho comum" 50.0 NaFila
  let rabanete = Atendimento "Espírito do Rabanete" "Banho quente" 80.0 NaFila

  let atendimentos = [deusDoRio, semRosto, rabanete]
  let atualizados = [concluir deusDoRio, semRosto, concluir rabanete]

  putStrLn "--- Atendimentos ---"
  mapM_ putStrLn (map descrever atendimentos)
  putStrLn ("Arrecadado: " ++ show (arrecadado atendimentos))

  putStrLn "--- Depois ---"
  mapM_ putStrLn (map descrever atualizados)
  putStrLn ("Arrecadado: " ++ show (arrecadado atualizados))
