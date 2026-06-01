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

main :: IO ()
main = do
    print("oi")
    print(densidade 42.94 10)
    print(maiorMenor 10 5)
    print(iniciais "Yago" "Campello")
    print(cDensidade [(10,2), (20,5)])