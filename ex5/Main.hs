
seg :: [Integer] -> Integer
seg lista
    |length lista < 2 = 0
    |otherwise = head (tail lista) --usando o head(1 elemento) pegamos a tail(2 elemento)

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5]
    putStrLn ("" ++ show (seg lista))