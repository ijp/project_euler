fibs = 1:2:zipWith (+) fibs (tail fibs)

main = putStrLn $ show $ sum $ filter even $ takeWhile (< 4000000) fibs
