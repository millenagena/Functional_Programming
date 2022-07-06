-- um "while"
le_imprime = do entrada <- getLine
                if(entrada == [])
                    then return ()
                    else do putStrLn entrada
                            le-imprime