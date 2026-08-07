l1 = [0,1,2,3,4,1]

lista_to_num :: [Int] -> Int
lista_to_num lista = foldr(\i acum -> i*10 + acum) 0 lista
main = print(lista_to_num l1)
