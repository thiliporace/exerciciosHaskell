
tot3 :: [Int] -> [Int]

tot3_aux :: [Int] -> Int
tot3_aux = sum -- variavel auxiliar

tot3 [] = [] -- caso base
tot3 xs
  | length xs < 3 = [tot3_aux xs] -- Se a lista tem menos de 3 elementos, totaliza os que existem
  | otherwise = tot3_aux (take 3 xs) : tot3 (drop 3 xs) -- Totaliza os 3 primeiros elementos e continua com o restante

main :: IO ()
main = do
  let lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  let resultado = tot3 lista
  putStrLn "Lista original: "
  print lista
  putStrLn "Totalizado a cada 3 elementos:"
  print resultado
