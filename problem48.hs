selfPower modulus n = exp (n `mod` modulus)
  where exp m | m == 0    = 1
              | odd m     = (n * exp (m - 1)) `mod` modulus
              | otherwise = (h * h) `mod` modulus
          where h = exp (m `div` 2)

addM modulus p q = (p + q) `mod` modulus

main = print . foldr (addM m) 0 . map (selfPower m) $ [1..1000]
  where m = 10^10


