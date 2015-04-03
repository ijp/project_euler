remove :: Int -> [a] -> (a,[a])
remove n xs = (x, head ++ tail)
  where (head, x:tail) = splitAt n xs

factorial n = foldl (*) 1 [1..n]

nthPermutation n xs
  | n == 0    = xs
  | otherwise = y : nthPermutation n' ys
  where numPerms = factorial (length xs - 1)
        (i, n') = n `divMod` numPerms
        (y, ys) = remove i xs

main = putStrLn . concatMap show $ nthPermutation (1000000 - 1) [0..9]
