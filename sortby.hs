import Data.List (sortBy)

type Pessoas = [(String, Int)]

lista :: Pessoas
lista = [("Joao", 12),("Joana", 31), ("Alberto", 90), ("Ana", 22)]

comparacaoUnidade :: (String,Int) -> (String, Int) -> Ordering -- tipo ordering
comparacaoUnidade (n1,idade1) (n2,idade2) = compare (mod idade1 10) (mod idade2 10) <> compare n1 n2 -- retorna GT, EQ, LT

resultado = sortBy comparacaoUnidade lista

main = print (resultado)