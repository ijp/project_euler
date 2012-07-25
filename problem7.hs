primes = sieve [2..]

not_divisible_by y x = x `mod` y /= 0

-- Trial Division, not actually the sieve of eratosthenes
-- forgive me Mellisa O'Neill :)
sieve (x:xs) = x : (sieve $ filter (not_divisible_by x) xs)

main = putStrLn $ show $ primes !! 10000 -- stupid, I had an off by 1 error
