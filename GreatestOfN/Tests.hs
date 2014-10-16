module Tests where

import TestSuite

import GreatestOfN 


greatestOfNTestCases
  = [ [1,5,2,7,9]			==> 9
    , [0]					==> 0
	, [10000, 0, -19, 7]	==> 10000
	, [0,0,0,1]				==> 1]

allTestCases = [TestCase "greatestOfN" greatestOfN greatestOfNTestCases]

runTests = mapM_ goTest allTestCases

main = runTests
