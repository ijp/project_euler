-- A naive solution based on filtering works fine for small numbers,
-- but this solution is more efficient for larger numbers depends
-- on the number of factors, rather than the size of the solution

import Data.List as List
import Data.Map as Map

-- from problem3.hs
divisible_by x y = x `mod` y == 0

factor i | i <= 0 = []
factor 1 = [1]
factor i = loop 2 i
  where loop x i | x > i = []
        loop x i | divisible_by i x = x : loop x (i `div` x)
        loop x i = loop (x + 1) i

-- solution        
factor2 :: Int -> Map Int Int
factor2 n = Map.fromList $ List.map (\ n -> (head n, length n)) groups
  where groups = group $ factor n
        
unfactor :: Map Int Int -> Int
unfactor = product . List.map (uncurry (^)) . Map.toList

min_divides fs = unfactor $ unionsWith max $ List.map factor2 fs

divisors = [2..20]

main = putStrLn $ show $ min_divides divisors
