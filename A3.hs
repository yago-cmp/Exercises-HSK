l1 = [7,5,4,3,9]

indices :: [a] -> [(Int, a)]
indices l = foldr(\count i acum = (count,i): acum) [] lista
main = print(lista_to_num l1)