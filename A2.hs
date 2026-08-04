l1 = [0,1,2,3,4,1]

inverte :: [a] -> [a]
inverte lista = v1
    where v1 = foldl (\acum i -> i : acum) [] lista -- no foldl o acumulador vem pela esquerda, mas haskell nao aceita []:X, precisa ser X:[]

main = print(inverte l1)

