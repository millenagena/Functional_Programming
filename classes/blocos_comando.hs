module Main (main) where

main :: IO()
main = do putStrLn "Digite um numero: "
          s1 <- getLine
          putStrLn "Digite outro número: "
          s2 <- getLine
          putStr "Soma: "
          putStrLn (show (read s1 + read s2))

menu :: IO()
menu = do putStr "Incluir novo cliente \n"
          putStr "Excluir cliente \n"
          putStr "Sair \n"

concatenaLinhas :: IO()
concatenaLinhas = do str1 <- getLine
                     str2 <- getLine
                     putStrLn (str1 ++ str2)