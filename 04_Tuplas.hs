triangulos :: [(Integer, Integer, Integer)] -- func devolve um trio de inteiros
triangulos = [ (a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10], a^2 + b^2 == c^2, a+b+c==24]  
 -- funcao triangulos pega todas as possibilidades ate 10 e filtra: retangulo e per = 24

main :: IO ()
main = do
    print (fst (8, 11)) -- primeiro elemento da tupla
    print (snd (8, 11)) -- segundo elemento da tupla
    print (zip [1,2,3] [3,2,1]) -- junta duas listas em pares (tuplas)
    print (zip [1..] ["um", "dois", "tres"]) -- funciona com infinito
    print triangulos
--tuplas têm seus tipos definidos pelo seu conteúdo
