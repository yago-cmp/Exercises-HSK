type Terrenos = [(Float,String,String)] -- tipo terrenos: tamanho em m2, tipo (rural ou urbano) e uso (residencial/comercial/produtivo)

lista :: Terrenos
lista = [(10000.0, "rural", "produtivo"),(200.0, "urbano", "residencial"), (55.0, "urbano", "comercial")]

urbanos :: Terrenos -> Terrenos -- filtra por tipo do terreno
urbanos l = filter(\(_,tipo,_) -> tipo == "urbano") l

type TerrenosIptu = [(Float,String,String,Float)]
calculoIptu :: Terrenos -> TerrenosIptu -- calcula o iptu e adiciona
calculoIptu l = map(\(area,tipo,uso) -> (area,tipo,uso,area*0.23)) l

areaTotal :: Terrenos -> Float -- calcula area total do conjunto de terrenos
areaTotal l = foldr(\(area,_,_) acum -> area + acum) 0 l



main = do print (urbanos lista) -- a
          print (calculoIptu (urbanos lista)) -- b
          print (areaTotal lista) -- c

