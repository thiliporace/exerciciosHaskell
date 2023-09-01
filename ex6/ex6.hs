del :: Eq a => [a] -> [a]
del [] = []
del (x:xs) = x : del (filter (/= x) xs) --filtra elementos iguais e continua com a lista desconsiderando esses elementos


main :: IO ()
main = do
    let lista = [3, 2, 2, 2, 2, 3]
    let resultado = del lista
    print resultado