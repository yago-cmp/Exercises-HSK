type Funcionario = (String, [Int])
base :: [Funcionario]
base = [("Maria", [10,5,12]), ("Joao", [15,10]), ("Ana", [50])]

soma :: (Num a) => [a] -> a
soma l = foldr(\item acum -> item + acum) 0 l

somaFunc :: [Funcionario] -> [(String, Int)]
somaFunc l = map (\(nome, vendas) -> (nome, soma vendas)) l

extrair :: [(String, Int)] -> [(String, Int)]
extrair l = filter (\(nome, soma) -> soma >= 50) l

nomes :: [(String, Int)] -> [String]
nomes l = map (\(nome, vendas) -> nome) l

f :: [Funcionario] -> [String]
f l = nomes (extrair (somaFunc l))

main = print(f base)
