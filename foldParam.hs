data Lista a = No a (Lista a) | Vazio

l1 :: Lista Int
l1 = No 1 (No 2 (No 3 (No 4 (Vazio))))

soma :: Int -> Int -> Int
soma x y = x+y 

fold :: (b -> a -> b) -> b -> Lista a -> b -- fold L!!
fold func acc (No a resto) = fold func (func acc a) resto -- o acc agora é a funcao aplicada ao acc antigo + o item atual, e itera apenas sobre o resto
fold func acc Vazio = acc -- retorna o acumulador final quando vazio

main = do print(fold soma 0 l1)

--o exemplo, desenrolado:
--fold soma (soma (0 1)) (No 2 (No 3 (No 4 (Vazio)))
--fold soma (soma(soma (0 1) 2)) (No 3 (No 4 (Vazio))
--fold soma (soma (soma (soma (0 1) 2) 3)) (No 4 (Vazio))
--fold soma (soma(soma (soma (soma (0 1) 2) 3) 4)) (Vazio) 
-- quando vazio, retorna o acumulador:
--(soma(soma (soma (soma (0 1) 2) 3) 4)) = ((((0 + 1) + 2) + 3) + 4)

