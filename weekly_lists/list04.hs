
-- 01
import Data.Char

converte :: Char -> (Char, Char, Int)
converte a
    | isUpper a == True = (a, toLower a, ord a)
    | otherwise = (a, toUpper a, ord a)

-- 02

calculaBaskara :: (Float, Float, Float) -> (Float, Float)
calculaBaskara (a, b, c)
    | calculaDelta < 0 = error "RAIZES IMAGINARIAS" 
    | otherwise = calculaRaizes
    where
        calculaDelta = (b*b) - (4*a*c)
        calculaRaizes = ( ((-b) + sqrt calculaDelta)/ (2*a) ,  ((-b) - sqrt calculaDelta) / (2*a) )