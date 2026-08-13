l1 = [7,5,4,3,9]

indices :: [a] -> [(Int, a)]
indices l = fst(foldr(\item (lista, indice) -> ((indice, item):lista, indice-1)) ([], length(l)-1) l)
main = print(indices l1)