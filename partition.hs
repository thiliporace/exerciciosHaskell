module Main where

partition p l = partit p l [] []
partit p [] lmen lmai = (lmen,lmai)
partit p (a:xs) lmen lmai
               |a <= p = partit p xs (lmen++[a]) lmai
               |otherwise = partit p xs lmen(lmai++[a])


main = do
  let lista = [5,2,3,4,1]
  let pivot = 2
  let resultado =  partition pivot lista
  print resultado