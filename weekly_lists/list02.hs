-- Exercicio 01 --
-- letra a
ordena2 :: Int -> Int -> (Int, Int)
ordena2 x y = if x>=y then (y, x) else (x, y)

-- letra b
ordena2' :: Int -> Int -> (Int, Int)
ordena2' x y
    | x >= y = (y, x)
    | otherwise = (x, y)

-- Exercicio 02 --
-- letra a
mes :: Int -> String
mes x
    | x == 1 = "Janeiro"
    | x == 2 = "Fevereiro"
    | x == 3 = "Marco"
    | x == 4 = "Abril"
    | x == 5 = "Maio"
    | x == 6 = "Junho"
    | x == 7 = "Julho"
    | x == 8 = "Agosto"
    | x == 9 = "Setembro"
    | x == 10 = "Outubro"
    | x == 11 = "Novembro"
    | x == 12 = "Dezembro"
    | otherwise = "ERRO!!!"

-- letra b
mes' :: Int -> String
mes' x = 
    case x of
        1 -> "Janeiro"
        2 -> "Fevereiro"
        3 -> "Marco"
        4 -> "Abril"
        5 -> "Maio"
        6 -> "Junho"
        7 -> "Julho"
        8 -> "Agosto"
        9 -> "Setembro"
        10 -> "Outubro"
        11 -> "Novembro"
        12 -> "Dezembro"
        _ -> "ERRO!!!"

-- Exercicio 03 --
tipoTriangulo :: Float -> Float -> Float -> String
tipoTriangulo x y z
    | x == y && x == z && verificaTriangulo = "Equilatero"
    | (x == y || x == z || y == z) && verificaTriangulo = "Isosceles"
    | x /= y && y /= z && verificaTriangulo = "Escaleno"
    | otherwise = "Nao eh um triangulo"
    where
        verificaTriangulo = x < (y + z) && y < (x + z) && z < (x + y)

-- Exercicio 04 -- 
somaQuadrados :: Float -> Float -> Float
somaQuadrados x y = let soma1 = (x^2) + (y^2)
                        soma2 = (x+y)^2
                    in if soma1>soma2 then soma1 else soma2

-- Exercicio 05 --
main :: IO()
main = do putStrLn "Nome: "
          nome <- getLine
          putStrLn "Matricula: "
          mat <- getLine
          putStrLn "Nota: "
          nota <- getLine
          print("\n" ++ nome ++ " " ++ mat ++ " " ++ nota)