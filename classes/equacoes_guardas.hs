vabs :: (Num a, Ord a) => a -> a
vabs n 
    | n >= 0 = n
    | otherwise = -n

sinal :: Int -> Int
sinal n
    | n < 0 = -1
    | n == 0 = 0
    |otherwise = 1