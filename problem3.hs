divisible_by :: Integer -> Integer -> Bool
divisible_by x y = x `mod` y == 0

factor :: Integer -> [Integer]
factor i | i <= 0 = []
factor 1 = [1]
factor i = loop 2 i
  where loop x i | x > i = []
        loop x i | divisible_by i x = x : loop x (i `div` x)
        loop x i = loop (x + 1) i

-- N.B. 600851475143 is bigger than a machine Int, so need to use Integer instead
main = putStrLn $ show $ maximum $ factor 600851475143
