
-- 01
sq n = foldr (+) 0 (map (^2) [1..n])

-- 02
sqp lst = foldr (+) 0 (map (^3) (filter even lst))