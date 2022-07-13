-- um "while"
le_imprime = do entrada <- getLine
                if(entrada == [])
                    then return ()
                    else do putStrLn entrada
                            le-imprime

-- SOMA
soma 1 = 1 -- caso base
soma n = soma (n-1) + n

-- FATORIAL
fatorial 0 = 1
fatorial n = fatorial (n-1) * n

-- FATORIAL COM GUARDAS
fatorial1 :: Integer -> Integer
fatorial1 n
    | n == 0 = 1
    | n > 0 = fatorial (n-1)*n

-- POTENCIA 
potencia2 n
    | n == 0 = 1
    | n > 0 = 2 * potencia2 (n-1)

----------- RECURSIVIDADE MUTUA -----------
----------- RECURSIVIDADE DE CAUDA -----------

potencia2Cauda :: Int -> Int -> Int
potencia2Cauda n acumulado
    | n == 0 acumulado
    | n > 0 = potencia2Cauda (n-1) (2*acumulado)

