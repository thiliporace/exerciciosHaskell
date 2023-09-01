delk :: Int -> [Int] -> [Int]

delk 0 [] = [] -- caso base
delk a xs
  | a <= 0 = xs -- Se a lista tem menos de k elementos, retorna a lista original
delk k xs = take (k-1) xs ++ delk k (drop k xs) -- remove um a cada k elementos da lista 

main :: IO ()
main = do
  let lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  let k = 3
  let resultado = delk k lista
  putStrLn "Deletando a cada k elementos:"
  print resultado
