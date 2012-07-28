divides n m = n `mod` m == 0

primes :: [Integer]
primes = 2 : 3 : 5 : filter is_prime [6..]
  where is_prime n = not $ any (n `divides`) $ smaller_primes n
        smaller_primes n = takeWhile (<= int_root n) primes
        int_root = ceiling . sqrt . fromIntegral


main = print $ sum $ takeWhile (< 2000000) primes
