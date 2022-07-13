-- formas de escrever expressões condicionais

f1 :: Int -> Int -> Int -> Int
f1 x y z 
    | (x == 1) = 10
    | (y == 2) = 20
    | (z == 3) = 30
    | otherwise = 0

-- OU 

f2 :: Int -> Int -> Int -> Int
f2 1 _ _ = 10
f2 _ 2 _ = 20
f2 _ _ 3 = 30
f2 _ _ _ = 0