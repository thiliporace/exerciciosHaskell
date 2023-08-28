
ult :: [Integer] -> Integer
ult [] = 0

ult [a] = a
ult (_:xs) = ult xs --descarta o primeiro elemento ate chegar no fim da lista


main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    putStrLn ("" ++ show (ult lista))
