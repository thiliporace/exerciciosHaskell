module Main where

rev :: [Integer] -> [Integer]
rev [] = []
rev (a:xs) = rev xs ++ [a]

main = do
  putStrLn "Hello, World!"
  let array = [1,2,3,4,5]
  let resultado = rev array
  print resultado