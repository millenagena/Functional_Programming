
-- 01
-- :t ['a', 'b', 'c'] -- haskell conta a resposta

-- a -- 
-- a :: [Char]

-- b --
-- b :: (Char, Char, Char)

-- c --
-- c :: [(Boolean, Char)]

-- d --
-- d :: ([Bool], [Char])

-- e --
-- lista de funcao do mesmo tipo
-- e :: [[a]->[a]]

-- 2

-- a -- retorna o 2 elemento
second xs = head (tail xs)

-- b -- retorna os elementos em uma tupla
pair x y = (x,y)

-- c -- palindromo
palindrome xs = reverse xs == xs

-- 3
ultimoLista l = head (reverse l) 

ultimoLista1 l = l !! ((length l) - 1)

ultimoLista2 l = head (take 1 (reverse xs))

ultimoLista3 l = head(drop (length l - 1) xs)

-- 4 
type Aluno = (Integer, [Char], Double) -- Nro Aluno, Nome, Nota
type Curso = [Aluno]

-- a


-- b



