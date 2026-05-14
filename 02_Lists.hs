lista = [1, 2, 3, 4, 5] -- precisa ter o mesmo tipo!!!
stringg = ['o','l','a']

main :: IO ()
main = do
    print lista
    let novaLista = lista ++ [1] -- usa let para atribuicao dentro de um 'do'
    print novaLista
    print (0:lista) -- insere na frente
    print (0:1:2:3:4:5:[]) -- isso é uma lista na vdd!!!!
    print (stringg !! 2) -- retira pelo indice
    print (head lista) -- 1o elemento
    print (tail stringg) -- corta a head
    print (last lista) -- autoexplicativo
    print (init stringg) -- tudo menos o ultimo
    print (length lista) -- no elementos
    print (null lista) -- null?
    print (null []) -- agora sim
    print (reverse stringg) -- inverte
    print (take 3 lista) -- pega os 3 primeiros
    print (take 0 lista) -- nao pega nada ! surpresa !
    print (drop 2 stringg) -- tira 2 os primeiros
    print (minimum lista) -- autoexplicativo - maximum tbm
    print (show (sum lista) ++ " " ++ show(product lista)) -- show transforma em string para viz
    print ('a' `elem` stringg) -- chama por infix, vê se é elemento
