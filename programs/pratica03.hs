--Ex 1

isPalindrome = do putStrLn "Digite uma frase"
                  frase <- getLine
                  if reverse frase == frase
                      then putStrLn "É um palíndrome"
                      else putStrLn "Não é um palíndrome"

--Ex 2
calcProd :: IO()
calcProd = do putStrLn "Digite o primeiro float"
              n1 <- readLn
              putStrLn "Digite o segundo float"
              n2 <- readLn
              putStrLn "Digite o terceiro float"
              n3 <- readLn
              putStrLn ("O produto eh " ++ show(multiplica n1 n2 n3))


multiplica :: Float -> Float -> Float -> Float
multiplica x y z = x*y*z

--Ex 3

celsius :: Double -> Double
celsius f = 5/9 * (f - 32)

main :: IO ()
main = do putStrLn "Digite uma temperatura em Fahrenheit"
          t <- getLine
          putStrLn ("Temperatura em Fahrenheit: " ++ t)
          putStrLn ("Temperatura em Celsius: " ++ show(celsius (read t)))

--Ex 4

conceitoNotas = do 
          putStr  "Nota 1: "
          n1 <- readLn
          putStr  "Nota 2: "
          n2 <- readLn
          putStr  "Nota 3: "
          n3 <- readLn
          let media = (n1 + n2 + n3)/3
          putStrLn ("Média: " ++ show (media))
          putStr "Situação: "
          if media < 3
              then putStrLn "reprovado"
              else if media < 7
                  then putStrLn "exame especial"
                  else putStrLn "aprovado"

-- Ex 5

classeEleitoral idade
    | idade < 16 = "não eleitor"
    | idade >= 18 && idade < 65 = "eleitor obrigatório"
    | otherwise = "eleitor facultativo"

ehEleitor = do putStrLn "Classe eleitoral"
               putStrLn "-------------------------------------------"
               putStr "Digite a idade da pessoa: "
               idade <- readLn
               putStrLn (classeEleitoral idade)

-- Ex 6
menu = do putStrLn "1. Salvar uma frase em arquivo texto"
          putStrLn "2. Imprimir o conteúdo do arquivo texto"
          putStrLn "3. Sair"
          putStrLn "Digite a opcao desejada: "
          opcao <- readLn
          case opcao of
              1 -> do putStrLn "Digite uma frase"
                      frase <- getLine
                      appendFile "info.txt" frase
                      putStrLn "Salvo."
              2 -> do conteudo <- readFile "info.txt"
                      putStrLn conteudo
                      putStrLn "Fim do arquivo."
              3 -> do putStrLn ""
              _ -> putStrLn "Opcao invalida"
          if not (opcao == 3) then menu else putStrLn "Saindo..."
