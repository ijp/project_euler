britCoins = [200,100,50,20,10,5,2,1]

-- nb. coins are ordered in decreasing, highest to lowest
coinSums [] _ = 0
coinSums _  0 = 1
coinSums (x:xs) sum
  | sum < x   = coinSums xs sum
  | otherwise = coinSums (x:xs) (sum - x) + coinSums xs sum


main = print $ coinSums britCoins 200
-- any bigger and I'd consider memoising
