l1 = [(10,10),(9,20),(-10,0)]

divida :: [(Int, Int)] -> Int
divida l = foldl(\divida (emprestimo,taxa) ->
            let total = divida + emprestimo --nao pode where em func anonima, usar let in
                juros = (total*taxa) `div` 100 --precisa multiplicar antes pq div retorna inteiro
            in total + juros
            ) 0 l

main = do print(divida l1) 