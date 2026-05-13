dobro:: Num a => a -> a -- define a func dobro, a é restringida por classe como um tipo de numero (=>)
dobro x = x + x

dobroDois :: Int -> Int -> Int -- Currying de funcoes, haskell passa 1 parametro por vez e cria funcoes subsequentes (->)
dobroDois x y = dobro x + dobro y

dobroCond :: Int -> Int
dobroCond x = if x > 10 -- if é uma expressao!!! e retorna um valor sempre
                then x*2
                else x

dobroCond' :: Int -> Int -- ' denota mudanca pequena
dobroCond' x = (if x > 10 then x*2 else x) + 1

oi :: String -> String -> String 
oi nome sobrenome = "oi " ++ nome ++ " " ++ sobrenome -- ++ é concatencao

oiYago:: String -> String
oiYago = oi "Yago" --define outra funcao com base em oi com 1o parametro fixo

main :: IO ()
main = do
    print (oiYago "Campello")
    print(dobroDois 10 10)
    print(dobroCond 9)
    print(dobroCond' 11)
    