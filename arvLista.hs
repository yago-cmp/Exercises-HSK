data Lista a = No a (Lista a) | Vazio
data Arv a = Galho a (Arv a) (Arv a) | Folha

lista :: Arv a -> Lista a
lista Folha = Vazio -- um vazio é um vazio!!
lista (Galho a e d) = concatenacao(No a (lista e)) (lista d)
--pega o item, poe ele num No junto com um dos lados, e junta o outro lado depois, recursivamente!!!

concatenacao :: Lista a -> Lista a -> Lista a
concatenacao (No x resto) y = No x (concatenacao resto y) -- vazios ja vao pro final 
concatenacao Vazio b = b -- se um dos lados for vazio, pega o outro