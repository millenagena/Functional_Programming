-- Millena Gená Pereira
-- 12111BCC055

type Codigo = Int
type Nome = String
type  Preco = Float
type Produto = (Codigo, Nome, Preco)

tabelaProdutos :: [Produto]
tabelaProdutos = [ (001, "Chocolate", 5.25),
                   (002, "Biscoito", 10.10),
                   (003, "Laranja", 4.60),
                   (004, "Sabao", 2.10),
                   (005, "Batata Chips", 6.90),
                   (006, "Doritos", 8.90) ]

isCodigo :: Int -> Produto -> Bool
isCodigo cod (codigo, _, _) = cod == codigo

getPreco :: Produto -> Float
getPreco (_, _, preco) = preco

getNome :: Produto -> String
getNome (_, nome, _) = nome

buscaPrecoPorCodigo :: Int -> Float
buscaPrecoPorCodigo cod = getPreco (head (filter (isCodigo cod) tabelaProdutos))

buscaNomePorCodigo :: Int -> String
buscaNomePorCodigo cod = getNome (head (filter (isCodigo cod) tabelaProdutos))

calculaPrecos :: [Int] -> Float
calculaPrecos lst = foldr (+) 0 (map buscaPrecoPorCodigo lst)

formataStrProduto :: Int -> String
formataStrProduto cod = (buscaNomePorCodigo cod) ++ (replicate (30 - ( (length (buscaNomePorCodigo cod) ) + (length (show(buscaPrecoPorCodigo cod))) )) '.') ++ (show(buscaPrecoPorCodigo cod)) ++ "\n"

formataStrTotal :: [Int] -> String
formataStrTotal lst = "Total" ++ ( replicate (30 - ( (length "Total" ) + (length (show(calculaPrecos lst))) ) ) '.' ) ++ (show(calculaPrecos lst))

geraNotaFiscal :: [Int] -> IO()
geraNotaFiscal lst = writeFile "NotaFiscal.txt" ( (foldr (++) "" (map formataStrProduto lst)) ++ (formataStrTotal lst) )