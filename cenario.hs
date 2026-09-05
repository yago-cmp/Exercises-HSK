main = do print (nomes estoque) --nomes de todos os produtos
          print (total (categoria estoque "papelaria")) -- valor total dos itens de papelaria
          print (nomes (emEstoque estoque)) -- nomes dos itens em estoque
          print (total estoque) -- valor total do estoque
          print (total (preBlackFriday estoque)) -- valor total após aumentar o preco
          print (total (blackFriday (preBlackFriday estoque))) -- valor total após diminuir parte do aumento


type Produto = (String, Float, String, Int) -- tipo produto: nome, preco, categoria e estoque

estoque :: [Produto]
estoque = [("TV", 2000.0, "eletronico", 15),("Tenis", 150.0, "vestuario", 0), ("Papel Sulfite A4", 15.0, "papelaria", 250)]

--1.1 desconto para a Black Friday
blackFriday :: [Produto] -> [Produto] -- aplica um desconto a todos os itens
blackFriday l = map(\(nome,preco,cat,qtd) -> (nome,preco * 0.85,cat,qtd)) l

--1.2 aumento Pré Black Friday
preBlackFriday :: [Produto] -> [Produto] --aumenta o valor de todos os itens
preBlackFriday l = map(\(nome,preco,cat,qtd) -> (nome,preco * 1.2, cat, qtd)) l

--2.1 filtra produtos em estoque
emEstoque :: [Produto] -> [Produto]
emEstoque l = filter(\(_,_,_,qtd) -> qtd > 0) l

--2.2 filtra por produtos de alguma categoria
categoria :: [Produto] -> String -> [Produto]
categoria l c = filter(\(_,_,cat,_)-> cat == c) l

-- 3.1 calcula os valor total de um conjunto de produtos
total :: [Produto] -> Float
total l = foldr(\(_,preco,_,qtd) acum -> acum + preco* fromIntegral qtd) 0.0 l

--3.2 salva o nome e a categoria dos produtos
nomes :: [Produto] -> String
nomes l = foldr(\(nome,_,cat,_) acum -> nome ++ " (" ++ cat ++ ") " ++ acum) [] l
