l1 = [10,20,30]

medias :: [Int] -> [Int]
medias l = reverse (foldl func [] l)

func :: [Int] -> Int -> [Int]
func [] atual = [atual]
func (anterior:resto) atual = atual : div (anterior+atual) 2 : anterior : resto



main = print (medias l1)