module FirstUnique where

firstUnique :: String -> Char
firstUnique [] = error "no unique char"
firstUnique (x:xs) 
  | fq x xs  = x
  |otherwise = firstUnique (filter (/=x) xs)
  where fq x xs = not (elem x xs)
