
-- 01
fatorialDuplo :: Int -> Int
fatorialDuplo 0 = 1
fatorialDuplo 1 = 1
fatorialDuplo n = n * fatorialDuplo (n - 2)

-- 02
resto p q
    | p < q = p
    | otherwise = resto (p-q) q

quociente p q
    | p < q = 0
    | otherwise = 1 + quociente (p-q) q

-- 03
potencia :: Int -> Int -> Int
potencia _ 0 = 1
potencia b 1 = b
potencia 1 _ = 1
potencia b e = res
    where 
        res = b * potencia b (e-1)

-- 04

-- a --
nand a b = if (a==False || b==False)
            then True
            else False

-- b -- 
nand1 a b 
    | a==False || b==False = True
    | otherwise = False

-- c --
nand2 _ False = True
nand2 False _ = True
nand2 _ _ = False