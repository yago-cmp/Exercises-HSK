-- guards sao essencialmente if elses, ou cases, mas mais elegantes
densidade :: (Fractional a, Ord a) => a -> a -> String  
densidade massa volume  
    | massa / volume < 1.2 = "leve"  
    | massa / volume <= 1000.0 = "medio"  
    | otherwise   = "pesado"  

maiorMenor :: (Ord a) => a -> a -> Ordering -- ordering é tipo de dado algebrico (LT, EQ, GT)
maiorMenor a b
    | a < b = LT
    | a > b = GT
    | otherwise = EQ

densidade' :: (Fractional a, Ord a) => a -> a -> String  -- versao com where!! uso de aliases
densidade' massa volume  
    | valor < ar = "leve"  
    | valor <= agua = "medio"  
    | otherwise   = "pesado"  
    where valor = massa/volume
          ar = 1.2
          agua = 1000.0

iniciais :: String -> String -> String
iniciais primeiro segundo = [f] ++ "." ++ [l] ++ "." -- [f] poe o caracter f em uma lista para print
    where (f:_) = primeiro -- pega o primeiro nome, extrai a primeira letra e poe em f
          (l:_) = segundo

cDensidade :: (Fractional a) => [(a, a)] -> [a] --calcula a densidade de uma lista tuplas
cDensidade xs = [densi m v | (m, v) <- xs] --extrai m e v, aplica massa/volume e retorna
    where densi massa volume = massa/volume --define a funcao com where

cilindro :: (RealFloat a) => a -> a -> a
cilindro raio altura =
    let lado = 2*pi*raio*altura -- define dentro do "in" apenas, where define na funcao toda
        topo = pi*raio^2
    in lado + 2*topo

cDensidade' :: (Fractional a, Ord a) => [(a, a)] -> [a] --calcula a densidade de uma lista tuplas
cDensidade' xs = [densi | (m, v) <- xs, let densi = m / v, densi < 1.2] -- usa let dentro da list comprehension e filtra

lista :: [a] -> String  
lista xs = "A lista " ++ case xs of [] -> "e vazia"  -- pattern matching com case!!
                                    [x] -> "tem 1 elemento"  -- na verdade todo pattern matching em definicao de funcoes usa case
                                    xs -> "e grande"  

main :: IO ()
main = do
    print("oi")
    print(densidade 42.94 10)
    print(maiorMenor 10 5)
    print(iniciais "Yago" "Campello")
    print(cDensidade [(10,2), (20,5)])
    print(cilindro 10 10)
    print(cDensidade' [(10,2), (20,5)])
    print(lista "o")