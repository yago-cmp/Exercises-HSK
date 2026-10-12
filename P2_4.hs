data Exp = Num Int | Var String | Add Exp Exp | Sub Exp Exp

type Mem = [(String,Int)]

mem :: Mem -> String -> Int
mem [] _ = error "sem correspondencia"
mem ((chave, valor):resto) variavel = if chave == variavel then valor else mem resto variavel

dados :: Mem
dados = [("xis", 10)]

avalia :: Mem -> Exp -> Int
avalia _ (Num n) = n
avalia m (Var x) = mem m x
avalia m (Add x1 x2) = avalia m x1 + avalia m x2
avalia m (Sub x1 x2) = avalia m x1 - avalia m x2

main = do print(mem dados "xis")
	  print(avalia dados (Sub (Var "xis") (Var "xis")))
