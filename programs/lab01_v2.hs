-- exercício 2
n = a `div` length xs
  where
    a = 10
    xs= [1,2,3,4,5]

-- exercício 3
last_elem list = head (take 1 (reverse list))

-- exercicio 4
last_elem2 list = head (reverse list)
last_elem3 list = head (drop (length list - 1) list)

-- exercício 5
remove_last list = reverse (drop 1 (reverse list))
remove_last2 list = take (length list - 1) list
