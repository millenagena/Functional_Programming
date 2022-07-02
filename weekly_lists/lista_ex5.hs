module Main (main) where

main :: IO()
main = do putStrLn "Nome: "
          nome <- getLine
          putStrLn "Matricula: "
          mat <- getLine
          putStrLn "Nota: "
          nota <- getLine
          print("\n" ++ nome ++ " " ++ mat ++ " " ++ nota)