data Lista a = No a (Lista a) | Vazio
    deriving Show --para imprimir como string no terminal

lista1 :: Lista Int --lista1 é de inteiros 
lista1 = No 10 (No 15 (No 20 (No 30 (Vazio))))

funcPar :: Int -> Bool --confere se um int e par
funcPar x = mod x 2 == 0

filterP :: (a -> Bool) -> Lista a -> Lista a
filterP f l = 
    case l of
        Vazio -> Vazio
        No x m -> if f x then No x (filterP f m) else (filterP f m)

main = do print (filterP funcPar lista1) 