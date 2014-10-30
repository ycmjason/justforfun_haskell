module RobotSteps where

robotSteps :: (Int,Int) -> Int
robotSteps (0,0) = 0
robotSteps (x, y) = steps (abs x, abs y) 
	where
		steps :: (Int,Int) -> Int
		steps (n,0) = 1
		steps (0,n) = 1
		steps (x',y') = steps (x', y'-1) + steps (x'-1,y')

{-robotSteps :: (Int,Int) -> Int
robotSteps (x, y) = steps 1 (abs x, abs y) 
	where
		steps :: (Int,Int) -> Int
		steps (n,0) = 1
		steps (0,n) = 1
		steps (x',y') = steps (x', y'-1) + steps (x'-1,y')-}
