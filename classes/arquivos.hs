-- type FilePath
-- writeFile path string
-- appendFile caminho string
-- readFile caminho

r_direta :: IO()
r_direta = do conteudo <- readFile "teste.txt"
              putStrLn conteudo
              putStrLn "Acabou o arquivo"

w_direta = do appendFile "teste.txt" "Uma linha"
              putStrLn "Linha anexada"