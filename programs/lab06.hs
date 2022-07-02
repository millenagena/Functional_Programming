soma :: Double -> Double -> Double
soma x y = x + y

subtracao :: Double -> Double -> Double
subtracao x y = if x>y then x-y else y-x

produto :: Double -> Double -> Double
produto x y = x*y

divisao :: Double -> Double -> Double
divisao x y = if x>y 
                then if y /= 0
                        then div x y
                        else (-1)
                else if x /= 0
                        then div y x
                        else (-1)
menu op n1 n2 = 
    case op of
        1 -> soma n1 n2
        2 -> subtracao n1 n2
        3 -> produto n1 n2
        4 -> divisao n1 n2

main :: IO()
main = do putStrLn "Informe um valor: "
          n1 <- getLine
          putStrLn "Informe um segundo valor: "
          n2 <- getLine
          putStrLn "Escolha uma das opcoes"
          putStrLn "1 - Soma"
          putStrLn "2 - Subtracao"
          putStrLn "3 - Produto"
          putStrLn "4 - Divisao"
          op <- getLine
          print(menu (read op) (read n1) (read n2))