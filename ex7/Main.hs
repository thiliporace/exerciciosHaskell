
totk :: Int -> [Int] -> [Int]

totk_aux :: [Int] -> Int
totk_aux = sum -- variavel auxiliar

totk 0 [] = [] -- caso base
totk a xs
  | length xs < a = [totk_aux xs] -- Se a lista tem menos de k elementos, totaliza os que existem
  | otherwise = totk_aux (take a xs) : totk a (drop a xs) -- Totaliza os k primeiros elementos e continua com o restante

main :: IO ()
main = do
  let lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  let k = 4
  let resultado = totk k lista
  putStrLn "Lista original: "
  print lista
  putStrLn "Totalizado a cada k elementos:"
  print resultado
