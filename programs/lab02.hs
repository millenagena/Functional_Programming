----- Exercício 1 -----

type Pessoa = (String, Int, Float, Char)
pess :: Int -> Pessoa
pess x
    |x==1 = ("Cristina", 27, 1.66,'F') 
    |x==2 = ("Flávio", 26, 1.85,'M') 
    |x==3 = ("Mariana", 67, 1.55,'F') 
    |x==4 = ("Cecília", 48, 1.78, 'M') 
    |x==5 = ("Paulo", 24, 1.93, 'M') 
    |x==6 = ("Clara", 38, 1.70,'F') 
    |x==7 = ("Rodrigo", 12, 1.85, 'M') 
    |x==8 = ("Giovana", 31, 1.58,'F') 
    |x==9 = ("Daniel", 75, 1.74, 'M') 
    |x==10 = ("Eduardo", 21, 1.69,'F') 
    |otherwise = ("Acabou!",0, 0.0, 'x') 

altura :: Pessoa -> Float
altura (a, b, c, d) = c

maisAlta :: Int -> Int -> Int
maisAlta x y 
    | altura(pess x) > altura(pess y) = x
    | otherwise = y

diferencaAltura :: Int -> Int -> Float
diferencaAltura a b 
    | altura(pess a) > altura(pess b) = altura(pess a) - altura(pess b)
    | otherwise = altura(pess b) - altura(pess a)

-- pessoaMaisAlta :: Int -> Int
-- pessoaMaisAlta a = c
--     where
--         b = maisAlta a a-1
--         c = pessoaMaisAlta b

----- Exercício 2 -----

calculaDelta :: Float -> Float -> Float -> Float
calculaDelta a b c = (b*b) - (4*a*c)

calculaRaizes :: Float -> Float -> Float -> (Float, Float)
calculaRaizes a b c = ( ((-b) + sqrt(calculaDelta a b c))/ (2*a) ,  ((-b) - sqrt(calculaDelta a b c)) / (2*a) )

calculaEq :: Float -> Float -> Float -> (Float, Float)
calculaEq a b c
    | calculaDelta a b c < 0 = (0.0, 0.0)
    | otherwise = calculaRaizes a b c

----- Exercício 3 -----

verificaTriangulo :: Float -> Float -> Float -> Bool
verificaTriangulo a b c
    | a < (b + c) && b < (a + c) && c < (a + b) = True
    | otherwise = False

tipoTriangulo :: Float -> Float -> Float -> String
tipoTriangulo x y z
    | x == y && x == z && verificaTriangulo x y z = "Equilatero"
    | (x == y || x == z || y == z) && verificaTriangulo x y z = "Isosceles"
    | x /= y && y /= z && verificaTriangulo x y z = "Escaleno"
    | otherwise = "Nao eh um triangulo"