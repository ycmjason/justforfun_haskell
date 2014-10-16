module GreatestOfN where

greatestOfN :: [Int] -> Int
greatestOfN []	=	error "EMPTY LIST IS PASSED"
greatestOfN (x:xs)
	| xs == []			=	x
	| x>greatestOfN xs	=	x
	| otherwise			=	greatestOfN xs
