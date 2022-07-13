module Main (main) where
import System.IO(stdout, hFlush, hSetBuffering, BufferMode(NoBuffering))

imprime :: String -> IO()
imprime path = do
    conteudo <- readFile path
    putStrLn conteudo

deposito :: Float -> IO()
deposito valor = do
    saldo <- readFile "saldo.txt"
    putStr "\nSaldo anterior: "
    putStr saldo
    let t = (read saldo) + valor
    putStrLn ("\nSaldo atualizado: " ++  show t)
    writeFile "saldo.txt" (show t)
    appendFile "extrato.txt" ("\n+" ++ (show t))

saque :: Float -> IO()
saque valor = do
    saldo <- readFile "saldo.txt"
    putStr "\nSaldo anterior: "
    putStr saldo
    let t = (read saldo) - valor
    putStrLn ("\nSaldo atualizado: " ++  show t)
    writeFile "saldo.txt" (show t)
    appendFile "extrato.txt" ("\n-" ++ (show t))

main :: IO()
main = do hSetBuffering stdout NoBuffering
          putStrLn "=============================="
          putStrLn "BANCO MILLENA GENA PEREIRA"
          putStrLn "=============================="
          putStrLn "Opcoes: "
          putStrLn "1. Saldo"
          putStrLn "2. Extrato"
          putStrLn "3. Deposito"
          putStrLn "4. Saque"
          putStrLn "5. Fim"
          putStr "Escolha uma opcao: "
          opcao <- readLn
          case opcao of
              1 -> do
                putStrLn "\nSALDO ATUAL"
                imprime "saldo.txt"
              2 -> do
                putStrLn "\nEXTRATO"
                imprime "extrato.txt"
              3 -> do
                putStrLn "\nSISTEMA DE DEPOSITO"
                putStr "Informe o valor a ser depositado: "
                valor <- readLn
                deposito valor
                putStrLn "\nValor depositado com SUCESSO!"
              4 -> do
                putStrLn "\nSISTEMA DE SAQUE"
                putStr "Informe o valor a ser sacado: "
                valor <- readLn
                saque valor
                putStrLn "\nValor sacado com SUCESSO!"
              5 -> putStrLn "\nObrigada por utilizar o BANCO MILLENA GENA PEREIRA"
              _ -> putStrLn "\nOpcao invalida! Tente novamente."
          if not (opcao==5) then main else putStrLn "Volte sempre!"