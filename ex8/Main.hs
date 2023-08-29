module Main where

trok2 :: [Integer] -> [Integer]
trok2 [] = []
trok2(a:xs:resto) = xs : a : trok2 resto --troca a com xs

main :: IO ()
main = do
  let lista = [1, 2, 3, 4, 5, 6, 7, 8]
  let resultado = trok2 lista

  print resultado