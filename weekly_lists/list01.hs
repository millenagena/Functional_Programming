-- Exercicio 7
subtracao :: Double -> Double -> Double
subtracao a b = a - b

-- Exercicio 8
areaCirculo :: Double -> Double
areaCirculo r = pi * r * r

-- Exercicio 9
diferencaArea :: Double -> Double -> Double
diferencaArea r1 r2 = subtracao (areaCirculo r1) (areaCirculo r2)

-- Exercicio 10
formulaLogica :: Bool -> Bool -> Bool
formulaLogica p q = (p || q) && not (p && q)
