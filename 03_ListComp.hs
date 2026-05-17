menMai range = [if x > 10 then "mai" else "men" | x <- range, odd x]
-- func como

length' lista = sum [1 | _ <- lista] -- extrai os elementos e não os guarda, mas tem output 1, que é somado pelo sum.  

removerUp string = [x | x <- string, not(x `elem` ['A'..'Z'])] -- remove o uppercase de uma string

main :: IO ()
main = do
    print [1,3..10]
    print [10,9..0]
    print (take 4 [0,13..]) -- 4 itens do texas range
    print (take 10 (cycle [1,2])) -- cycle gera padroes infinitos
    print (take 5 (repeat 3)) -- repeat gera 1 unico elemento infinito
    print (replicate 5 3) -- replicate faz o mesmo, -take
    print [x*2 | x <- [1..10]] -- list comprehension
    print [x*2 | x <- [1..10], x*2 >= 10] -- list comprehension condicional
    print (menMai [1..11]) --chama func de comprehension
    print (length' [0..9])
    print (removerUp "AAaa")

