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

-- 03

-- letra a
type Pessoa = (String, Float, String)

-- letra b
pessoa :: Float -> Pessoa
pessoa 1 = ("Ana", 25, "F")
pessoa 2 = ("Jose", 18, "M")
pessoa 3 = ("Ruan", 30, "M")

-- letra c
pessoa1 :: Float -> Pessoa
pessoa1 id
    | id == 1 = ("Ana", 25, "F")
    | id == 2 = ("Jose", 18, "M")
    | id == 3 = ("Ruan", 30, "M")

-- letra d
idadePessoa :: Pessoa -> Float
idadePessoa (nome, idade, sexo) = idade

-- letra e
somaIdades :: Float -> Float
somaIdades 1 = idadePessoa (pessoa 1)
somaIdades n = idadePessoa (pessoa n) + somaIdades(n-1)

-- letra f
mediaIdades :: Float -> Float
mediaIdades n = (somaIdades n) / n