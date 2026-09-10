{- O tipo de dados Personagem engloba dois blocos: um comum a todas as classes e outro específico de cada uma.
Optei por nomear todos os atributos para acesso mais fácil e menos dependente da posição na hora da criação.
Todos possuem nome, altura, idade, vida, nível e uma guilda. Guerreiros possuem um valor de força física, um valor
de armadura e uma lista de golpes (tupla com nome e dano). Magos possuem um valor de poder mágico e uma lista de
feitiços (tupla com nome e dano). Sacerdotes possuem um valor de crença, uma lista de ritos (tupla com nome e cura/dano)
e uma flag que indica se ele é da luz ou das trevas (define se os feitiços darão dano ou curarão).
-}

data Base = Base {
nome :: String,
altura :: Float,
idade :: Int,
vida :: Int,
nivel :: Int,
guild :: String
}

data Classe = Guerreiro {forca :: Int, armadura :: Int, golpes :: [(String, Int)]}
            | Mago {poder :: Int, feiticos :: [(String, Int)]}
            | Sacerdote {crenca :: Int, ritos :: [(String, Int)], dasTrevas :: Bool}

data Personagem = Personagem {
basicos :: Base,
tipo :: Classe
}

nomeDaClasse :: Classe -> String
nomeDaClasse (Guerreiro _ _ _) = "Guerreiro"
nomeDaClasse (Mago _ _) = "Mago"
nomeDaClasse (Sacerdote _ _ _) = "Sacerdote"

p1 :: Personagem
p1 = Personagem{
basicos = Base "Kratos" 2.35 215 2000 18 "Turma do Bairro",
tipo = Guerreiro 100 30 [("ombrada", 100),("corte rapido",120)]
}

p2 :: Personagem
p2 = Personagem{
basicos = Base "Gandalf" 2.50 82 1000 180 "Turma da HStern",
tipo = Mago 190 [("luz cegante", 50),("chama do inferno", 250)]
}

main = do print(nome(basicos p1)++" e um "++ nomeDaClasse(tipo p1) ++ " de nivel " ++ show (nivel(basicos p1)))
          print(nome(basicos p2)++" e um "++ nomeDaClasse(tipo p2) ++ " de nivel " ++ show (nivel(basicos p2)))