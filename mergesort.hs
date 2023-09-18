module Main where

--Split
split lst = sp lst [] []
sp [] l1 l2 = (l1,l2)
sp [a] l1 l2 = (l1++[a],l2)
sp(a:(b:xs)) l1 l2 = sp xs (l1++[a]) (l2++[b])

--Merge
merge [] l = l
merge l [] = l
merge (a:xs) (b:ys) | a < b = a : merge xs (b:ys)
                    | otherwise = b : merge (a:xs) ys

--Primeiro e Segundo
pri (a,_) = a
seg (_ , a) = a

--Msort
msort [] = []
msort [a] = [a]
msort l = merge (msort l1) (msort l2)
    where l1 = pri dupla
          l2 = seg dupla
          dupla = split l

main = do
  let lista = [1,5,4,3,2]
  let result = msort lista
  print result