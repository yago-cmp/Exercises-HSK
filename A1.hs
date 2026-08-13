l1 = [0,1,2,3,4,1]

lista_to_num :: [Int] -> Int
lista_to_num lista = fst(foldr(\i (total, mult) -> (total + (i*mult), mult*10)) (0,1) lista)

lista_to_numL :: [Int] -> Int
lista_to_numL lista = foldl(\acum i-> i*10 + acum) 0 lista
main = print(lista_to_num l1)
