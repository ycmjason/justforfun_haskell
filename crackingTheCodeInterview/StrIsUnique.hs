module StrIsUnique where
{-
strIsUnique :: String -> Bool
--Pre: the given list is not empty
strIsUnique [x] = True
strIsUnique (x:xs) = not(elem x xs) && strIsUnique xs
-}

strIsUnique :: String -> Bool
--Pre: the given list is not empty
strIsUnique x = and (map (`elem` x)  x)
