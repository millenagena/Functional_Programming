-- as alternativas (resultados das condicoes) sempre devem ser do mesmo tipo
-- if True then 1 else 2
-- if False then 1 else 2
-- if 2>1 then "OK" else "FAIL"
-- if even 5 then 3+2 else 3-2

-- expressoes dentro de expressoes
-- 5 * if True then 10 else 20
-- length (if 2<=1 then "OK" else "FAIL")
-- if mod 17 2 \= 0 then not True else True

-- funcoes com condicionais
valorAbsoluto :: Int -> Int
valorAbsoluto n = if n >= 0 then n else -n

-- expressoes aninhadas
sinal :: Int -> Int
sinal n = if n < 0
            then -1
            else if n == 0
                then 0
                else 1