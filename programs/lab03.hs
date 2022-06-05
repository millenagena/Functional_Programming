----- Exercício 1 -----

maior :: Int -> Int -> Int
maior a b = if a > b then a else b

-- letra a: 
-- os testes funcionaram conforme esperado, a função está correta

-- letra b:
maior3 :: Int -> Int -> Int -> Int
maior3 a b c
    | a > b && a > c = a
    | b > a && b > c = b
    | otherwise = c

-- letra c:
menor a b = if a < b then a else b

ordena3 :: Int -> Int -> Int -> (Int, Int, Int)
ordena3 a b c
    | maior3 a b c == a = (menor b c, maior b c, a)
    | maior3 a b c == b = (menor a c, maior a c, b)
    | otherwise = (menor a b, maior a b, c)

----- Exercício 2 -----

-- Definição usando padrões para distinção dos dois casos 
somaN 0 = 0 
somaN n = n + somaN (n-1) 
-- Definição usando guardas 
somaN1 n 
  | n == 0 = 0 
  | otherwise = n + somaN1 (n-1) 
-- Definição usando expressão condicional if 
somaN2 n = if n == 0 
           then 0 
           else n + somaN2(n-1)

-- letra a: 
-- Temos a exceção "Exception: stack overflow"

-- letra b:

verificaPositivo :: Int -> Bool
verificaPositivo x
    | x < 0 = False
    | otherwise = True

somaN3 :: Int -> Int
somaN3 0 = 0 
somaN3 n
    | verificaPositivo n == False = error "Soma não pode ser realizada" 
    | otherwise = n + somaN (n-1)

somaN4 :: Int -> Int
somaN4 n 
  | n == 0 = 0 
  | verificaPositivo n == False = error "Soma não pode ser realizada"
  | otherwise = n + somaN1 (n-1) 

somaN5 :: Int -> Int
somaN5 n = if n == 0 
               then 0 
           else if verificaPositivo n == False
               then error "Soma não pode ser realizada"
           else n + somaN2(n-1)

----- Exercício 3 -----

fatorial :: Int -> Int
fatorial 0 = 1
fatorial 1 = 1
fatorial n = n * fatorial (n - 2)