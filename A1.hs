l1 = [0,1,2,3,4,1]

lista_to_num :: [Int] -> Int
lista_to_num lista =
    let lista2 = map show lista
        v1 = foldr (++) "" lista2
    in read v1 

main = print(lista_to_num l1)

