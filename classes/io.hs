-- show: converte show (char, int, float) -> string
-- read: converte string -> read (char, int, float)

-- para esvaziar o buffer
-- hFlush stdout -- limpa o buffer da saida
-- hFlush stdin -- limpa o buffer da entrada

module Main (main) where

import System.IO

main :: IO()
main = do putStrLn "Digite um valor:"
          valor <- getLine
          putStrLn "Digite um segundo valor:"
          valor2 <- getLine
          putStrLn(read valor + read valor2)

main2 :: IO()
main2 = do hSetBuffering stdout NoBuffering
           putStr "Digite um numero:"
           s1 <- getLine
           putStr "Digite um numero:"
           s2 <- getLine
           putStrLn("Soma: " ++ show(read valor + read valor2))

main3 :: IO()
main3 = do putStr "Digite um numero:"
           putStr "1,2,3,4 ou 5 para sair"
           op <- readLn
           if not (op == 5) then main else putStrLn "Saindo..."