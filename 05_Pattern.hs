patternMatching :: (Integral a) => a -> [Char]
patternMatching 10 = "dez!!!" -- define casos especiais
patternMatching x = "nao e dez!" -- e um generico

fatorial :: (Integral a) => a -> a -- funcao recursiva usando pattern matching
fatorial 0 = 1
fatorial x = x * fatorial(x-1)

addVetor :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVetor a b = (fst a + fst b, snd a + snd b)  

addVetor' :: (Num a) => (a,a) -> (a, a) -> (a, a) -- a declaracao explicita de tipo ja garante
addVetor' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2) -- duas tuplas de 2 numeros

second :: (a, b, c) -> b
second (_, y, _) = y -- funcao retorna o segundo elemento de uma tripla

tuplas = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)] 

doisPraUm :: (Num a) => [(a, a)] -> [a] -- Num pq usa + na implementacao
doisPraUm xs = [a+b | (a,b) <- xs]

head' :: [a] -> a
head' [] = error "lista vazia!" -- gera um erro em runtime
head' (x:_) = x -- como uma lista é x:y:z, o _ denota qualquer coisa, e então pega o primeiro 

falar :: (Show a) => [a] -> [Char] -- var a precisa ser consersível em string
falar [] = "lista vazia"
falar (x:[]) = "um elemento: " ++ show x
falar (x:y:_) = "dois elementos: " ++ show x ++ " e " ++ show y ++ " ou mais"

length' :: (Num b) => [a] -> b  -- retorna o tamanho da lista
length' [] = 0  -- caso base
length' (_:xs) = 1 + length' xs   -- retorna 1 e soma com a chamada do resto da lista

sum' :: (Num a) => [a] -> a  -- precisa ser Num pelo +, soma os elementos da lista
sum' [] = 0  -- caso base
sum' (x:xs) = x + sum' xs  --soma o primeiro elemento com a soma do resto

primeira :: [Char] -> [Char]
primeira "" = "string vazia"
primeira tudo@(x:_) = "o primeiro char de " ++ tudo ++ " e " ++ [x] -- o @ faz guardar todo o conteudo do padrao

main :: IO ()
main = do
    print(patternMatching 10)
    print(patternMatching 12)
    print(fatorial 4)
    print(addVetor' (10,20) (20,10))
    print(second (1,2,3))
    print(doisPraUm tuplas)
    print(head' "abcd")
    print(falar [1,2,3])
    print(length' [1,2,3])
    print(sum' [1,2,3])
    print(primeira "abcde")

