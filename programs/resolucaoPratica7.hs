--Exercicio 1
--a)
data Forma = Circulo Float | Retangulo Float Float

isRound::Forma->Bool
isRound (Circulo _) = True
isRound (Retangulo _ _) = False

--b)
area::Forma->Float
area (Circulo r) = pi*r*r
area (Retangulo h w) = h*w

--c)
--Circulo::Float->Forma
--Retangulo::Float->Float->Forma

--d)
--data Forma = Circulo Float | Retangulo Float Float |Triangulo Float Float


--Exercicio 2
--a)
--dobro::Num a => a -> a

--b)
--aprovado::(Num a, Ord a) => a -> Bool

--c)
--myLog::Floating a => a -> a -> a

--Exercicio 3
{-
a) [[a]]
b) Num a => [[a]]
c) (Fractional a, Fractional b, Fractional c) => (a,b,c)
d) (Num a, Fractional b) => [(a,b)]
e) Num a => ([String], [a]->a, String)
f) [Int->Int]
-}

--Exercicio 4
--a)
type Coordenada = (Double,Double)
--b)
data Coord = Coord Double Double
--c)
somaVet::Coordenada->Coordenada->Coordenada
somaVet (x1,y1) (x2,y2) = (x1+x2,y1+y2)

somaVet2::Coord->Coord->Coord
somaVet2 (Coord x1 y1) (Coord x2 y2) = Coord (x1+x2) (y1+y2)
