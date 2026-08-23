l1 = [10,20,30,10]

med_bim :: [Int] -> [Int]
med_bim l = medias where
    resultado = foldr(\item (lista,cont,ant) -> if even cont
                                                then (lista, cont+1, item)
                                                else (((item+ant) `div` 2):lista, cont+1, ant)) ([],0,0) l
    (medias,_,_) = resultado


main = do print(med_bim l1) 