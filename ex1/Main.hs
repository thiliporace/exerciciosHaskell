
tot3 :: [Int] -> [Int]

tot3_aux :: [Int] -> Int
tot3_aux = sum -- variavel auxiliar

tot3 [] = [] -- caso base
tot3 xs
  | length xs < 3 = [tot3_aux xs] -- se tem menos de 3 elementos totaliza o que houver
  | otherwise = tot3_aux (take 3 xs) : tot3 (drop 3 xs) -- totaliza os 3 primeiros elementos

main :: IO ()
main = do
  let lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  let resultado = tot3 lista
  print resultado
