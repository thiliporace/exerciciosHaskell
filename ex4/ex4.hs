
penult :: [Integer] -> Integer
penult [] = 0

penult [a , _] = a
penult (_:xs) = penult xs --descarta o primeiro elemento ate chegar no fim da lista


main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    putStrLn ("" ++ show (penult lista))