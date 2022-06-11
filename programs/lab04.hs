import Data.Char (ord, toUpper)

-- Exercicio 1

somaLista [] = 0
somaLista (x:xs) = x + somaLista xs

-- Exercicio 2

verificaPar :: Int -> Bool
verificaPar x
    | mod x 2 == 0 = True
    | otherwise = False

paresLista :: [Int] -> Int
paresLista [] = 0
paresLista (x:xs)
    | verificaPar x == True = 1 + paresLista xs
    | verificaPar x == False = paresLista xs

-- Exercicio 3

isUpper :: Char -> Bool
isUpper a 
    | ord a > 64 && ord a < 91 = True
    | otherwise = False

lowToUpper :: [Char] -> [Char]
lowToUpper [] = []
lowToUpper (x:xs) = [toUpper x] ++ lowToUpper xs

-- Exercicio 4

addElem :: [Int] -> Int -> [Int]
addElem lista elem = lista ++ [elem]

-- Exercicio 5

--belongsToList :: [Int] -> Int -> Bool
belongsToList [] _ = False
belongsToList (x:xs) elem
    | x == elem = True
    | otherwise = belongsToList xs elem

-- Exercicio 6

tamLista [] = 0
tamLista (x:xs) = 1 + tamLista xs

calculaMedia :: [Float] -> Float
calculaMedia lista = (somaLista lista) / (tamLista lista)