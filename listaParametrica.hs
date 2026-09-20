data Lista a = No a (Lista a) | Vazio
    deriving Show
    
listaInteiros :: Lista (Lista Int) --lista de listas de inteiro (Int substitui a)
listaInteiros = No (No 10(No 20 (Vazio))) (No (No 30(No 40 (Vazio))) (Vazio))

main = do print (listaInteiros) 
