max' :: (Ord a) => [a] -> a -- calcula o maior vlaor de uma lista
max' [] = error "lista vazia" -- retorna erro
max' [x] = x
max' (x:xs) -- pattern matching
    | x > maxCauda = x
    | otherwise = maxCauda -- guards
    where maxCauda = max' xs -- where definindo recursao

maximo :: (Ord a) => [a] -> a  
maximo [] = error "lista vazia"  
maximo [x] = x  
maximo (x:xs) = max x (maximo xs)  -- usa a funcao padrao max pra comparar

replicar :: (Num a, Ord a) => a -> b -> [b]
replicar n x
    | n <= 0 = [] -- se é 0, retorna lista vazia
    | otherwise = x:replicar (n-1) x -- retorna x:x:x:[]

take' :: (Num a, Ord a) => a -> [b] -> [b]
take' n _ -- SEM OTHERWISE, passa para o proximo direto
    | n <= 0 = [] -- se n acabar, fecha a lista nova
take' _ [] = [] -- para caso a lista esvazie antes de n
take' n (x:xs) = x:take' (n-1) xs -- retorna x:x:x:[] n vezes

reverso :: [a] -> [a]
reverso [] = [] -- retorna lista vazia
reverso (x:xs) = reverso xs ++ [x] -- concatena o primeiro elemento no final

zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = [] -- caso alguma lista seja vazia, fecha
zip' [] _ = []
zip' (x:xs) (y:ys) = (x, y):zip' xs ys -- pattern matching 2 primeiros elementos, concatena com recursao

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False -- caso a lista fique vazia
elem' a (x:xs) -- pattern matching
    | a == x = True -- caso encontre na lista
    | otherwise = elem' a xs -- caso não, procura no resto

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let menores = quicksort [a | a <- xs, a <= x]
        maiores = quicksort [a | a <- xs, a > x]
    in menores ++ [x] ++ maiores


main :: IO ()
main = do
    print(max' [1, 2, 4, 3, 5])
    print(maximo [1, 2, 8])
    print(replicar 4 10)
    print(take' 2 [10, 11, 12])
    print(reverso [1, 2, 3])
    print(zip' [1,2,3] [4,5])
    print(elem' 3 [1, 2, 3])