data Arv a = No a (Arv a) (Arv a) | Vazio
    
arvBool :: Arv Bool --arvore de bools (um pai False e dois filhos: um False e um True)
arvBool = No False (No True (Vazio) (Vazio)) (No False (Vazio) (Vazio))


data Lista a = Nolist a (Lista a) | Vaziolist
arvListInt :: Arv (Lista Int)
arvListInt = No (Nolist 10 (Nolist 20 (Vaziolist))) (No (Nolist 30 (Nolist 40 (Vaziolist))) Vazio Vazio) (No (Nolist 50 (Nolist 60 (Vaziolist))) Vazio Vazio)

