-- Millena Gená Pereira
-- 12111BCC055

-- 01
imprimeNVezes :: Int -> IO()
imprimeNVezes 1 = putStrLn("Frase")
imprimeNVezes n = do
    putStrLn("Frase")
    imprimeNVezes(n-1)

-- 02
eLogico :: Bool -> Bool -> Bool
eLogico a b
    | (a == True) && (b == True) = True
    | otherwise = False

-- 03
eLogico1 :: Bool -> Bool -> Bool
eLogico1 a b
    | a == True = b
    | otherwise = False

-- 04
combinacao :: Int -> Int -> Int
combinacao n k
    | k == 1 = n
    | k == n = 1
    | otherwise = combinacao (n-1) (k-1) + combinacao (n-1) k