module NSteps where
{--
nSteps :: Int -> Int
nSteps 1 = 1
nSteps 2 = 2
nSteps 3 = 4
nSteps n = nSteps (n-1) + nSteps (n-2) + nSteps (n-3)
-}


nSteps :: Int -> Int
nSteps 1 = 1
nSteps 2 = 2
nSteps 3 = 4
nSteps k = steps 1 2 4 4
  where 
    steps :: Int ->Int -> Int -> Int -> Int
    steps n n1 n2 x
	 | x==k		= n+n1+n2
	 | otherwise=steps n1 n2 (n2+n1+n) (x+1)
