-- Millena Gena Pereira
-- 12111BCC055

import Data.Char(toUpper)

-- 1 --
somaParesOrd :: [(Int, Int)] -> [Int]
somaParesOrd [] = []
somaParesOrd ((a,b):xs) = [a + b] ++ somaParesOrd xs

-- 2 -- 

-- a
listaMaiuscula :: [Char] -> [Char]
listaMaiuscula [] = []
listaMaiuscula (x:xs) = [toUpper x] ++ listaMaiuscula xs

-- b
tuplaMaiuscula :: [Char] -> ([Char], [Char])
tuplaMaiuscula p = (p, listaMaiuscula p)

-- 3 --

localizaElem :: Int -> [Int] -> Int -> Int
localizaElem _ [] cont = cont
localizaElem elem (x:xs) cont
    | x == elem = cont
    | otherwise = localizaElem elem xs (cont+1)


maiorValor :: [Int] -> (Int, Int)
maiorValor l = 
    (maior, localizaElem maior l 0)
    where
        maior = maximum l

-- 4 --

removePos :: Int -> [Int] -> [Int]
removePos pos list = do
    let (a,b) = splitAt pos list
    let res = a ++ (tail b)
    res

-- 5 --

type NomeAluno = String
type MediaNota = Int
type Aluno = (NomeAluno, MediaNota)

-- a
type Turma = [Aluno]

-- b 
lista :: Turma
lista = [("Joao", 100), ("Paulo", 50), ("Maria", 55), ("Jose", 62)]

aprovados :: Turma -> Int -> [NomeAluno]
aprovados [(nome, nota)] 
