divisores::Int->[Int]
divisores n = [x | x <- [1..n], mod n x == 0]

primo::Int->Bool
primo n = divisores n == [1,n]

primos::Int->[Int]
primos n = [x | x <- [1..n], primo x]

-- funcoes recursivas com lista --

sumList :: [Int] -> Int
sumList [] = 0
sumList (a:as) = a + sumList as

-- comprimento de uma lista
compr [] = 0
compr (a:as) = 1 + compr as

-- pertence a uma lista 
pertence _ [] = False
pertence elem (a:as)
    | elem == a = True
    | otherwise = pertence elem as