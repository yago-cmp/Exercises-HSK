data Arv a = Galho a (Arv a) (Arv a) | Folha
    deriving Show
    
a1 :: Arv Int
a1 = Galho 1 (Galho 2 (Folha) (Folha)) (Galho 3 (Folha) (Folha))

func :: Int -> Int
func x = x+1

mapA :: (a -> b) -> Arv a -> Arv b
mapA func Folha = Folha -- se for folha, retorna folha
mapA func (Galho a e d) = Galho (func a) (mapA func e) (mapA func d)
-- se for galho, retorna a funcao do item + recursao dos dois lados

main = do print(mapA func a1)