data Arv a = Galho a (Arv a) (Arv a) | Folha

folhas :: Arv a -> Int
folhas Folha = 0 --"folha" é apenas indicativo de que acabou
folhas (Galho _ Folha Folha) = 1 --um galho com dois indicativos de termino é, de fato, uma folha da arvore
folhas (Galho _ e d) = folhas e + folhas d -- soma os dois lados 