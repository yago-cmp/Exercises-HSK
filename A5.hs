l1 = [1,2,3]

dobro :: Int -> Int
dobro x = x*2

booleano ::(Ord a, Num a) => a -> Bool
booleano x = x > 2

mapf :: (a -> b) -> [a] -> [b]
mapf f l = foldr(\item acum -> f item : acum) [] l

filterf :: (a -> Bool) -> [a] -> [a]
filterf f l = foldr(\item acum -> if (f item) then (item:acum) else acum) [] l

main = do print(mapf dobro l1) 
          print(filterf booleano l1) 