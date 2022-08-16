import Data.Char 
--Exercicio 1 
--a) 
primeiros :: [(a, b)] -> [a] 
primeiros list = map fst list 

--b) 
maiusculas :: String -> String 
maiusculas list = map toUpper list 

--c) 
dobros :: Num a => [a] -> [a] 
dobros list = map (2 *) list 

--Exercicio 2 

--a) 
pares :: [Int] -> [Int] 
pares list =  filter even list 

--b) 
alfa::String->String  
alfa list = filter isAlpha list 

--c) 
rm_char::Char->String->String  
rm_char x list = filter (/= x) list 

--Exercicio 3 
--a) 
produto::Num a => [a] -> a 
produto list = foldr (*) 1 list  

e_logico :: [Bool] -> Bool 
e_logico list = foldr (&&) True list 

concatena :: [String] -> String 
concatena list = foldr (++) "" list 