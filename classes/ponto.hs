type Ponto = (Double, Double)

distanciaPontos :: Ponto -> Ponto -> Double
distanciaPontos a b = sqrt ( ((fst(b) - fst(a))^2) + ((snd(b) - snd(a))^2) )