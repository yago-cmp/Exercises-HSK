multi :: (Num a) => a -> a -> a -> a
multi x y z = x * y * z -- retorna funcoes, uma de cada vez

multiDois :: (Num a) => a -> a -> a
multiDois = multi 2 -- usa o retorno da funcao multi para compor, nao denota entrada

multiQuatro :: (Num a) => a -> a
multiQuatro = multiDois 2 -- usa a anterior

compararCem :: (Num a, Ord a) => a -> Ordering
compararCem = compare 100 -- compare é a-> (a-> Ordering), e compare 100 é a -> Ordering

isUpperAlphanum :: Char -> Bool  
isUpperAlphanum = (`elem` ['A'..'Z'])   -- para funcoes innfix, basta omitir entrada e usar ()

funcParam :: (a -> a) -> a -> a -- recebe uma funcao (a->a) e um parametro a, retorna a
funcParam f x = f (f x) -- aplica a funcao a x duas vezes

main :: IO ()
main = do
    print(multi 2 10 20)
    print(multiDois 10 20)
    print(multiQuatro 100)
    print(compararCem 101)
    print(isUpperAlphanum 'A')
    print(funcParam multiQuatro 1)
    print(funcParam (1:) [1])