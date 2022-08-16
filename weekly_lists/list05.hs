-- Millena Gená Pereira
-- 12111BCC055

import Data.Char (isDigit, isAlpha)

---- LISTA 05 ----

-- 1 --

-- a
numof :: Char -> String -> Int
numof c str = length(filter (==c) str)

-- b
ellen :: [String] -> [Int]
ellen listStr = map length listStr

-- c
ssp :: [Int] -> Int
ssp lst = foldr (+) 0 (map (^2) (filter (>0) lst))

-- 2 --
separa :: String -> (String, String)
separa lst = (filter isAlpha lst, filter isDigit lst)

-- 3 --

-- a

-- troquei o nome para const1 porque estava dando erro no momento de execucao
-- por ja ter uma funcao no preludio chamado const

const1 :: a -> b -> a
const1 x y = x
-- recebe dois elementos e retorna o primeiro elemento de dois elementos que foram informados

-- b
swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)
-- recebe uma tupa com 2 elementos e retorna a tupla informada com os elementos invertidos

-- c
apply :: (a -> b) -> a -> b
apply f x = f x
-- recebe uma funcao e um valor e retorna a chamada dessa funcao passando o valor como argumento 

-- d

-- troquei o nome para flip1 porque estava dando erro no momento de execucao
-- por ja ter uma funcao no preludio chamado flip

flip1 :: (a -> b -> c) -> b -> a -> c
flip1 f x y = f y x
-- recebe uma funcao e dois valores e retorna a chamada dessa funcao passando os valores informados de forma invertida

-- 4 --

-- nome, quantidade e preço unitário de um item
-- type ShopItem = (String, Float, Float)

-- a
data ShopItem = Ind {nome :: String,
                     qntd :: Float,
                     preco :: Float}
-- b
valorCompraItem :: ShopItem -> Float
valorCompraItem (Ind nome qntd preco) = qntd*preco

valorTotal :: [ShopItem] -> Float
valorTotal lst = foldr (+) 0 (map valorCompraItem lst)

-- para testar
-- valorTotal [(Ind "melancia" 2 5), (Ind "arroz" 2 40)]