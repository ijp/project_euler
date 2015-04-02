-- Triangular numbers, T_n = n(n+1)/2
-- Pentagonal numbers, P_n = n(3n-1)/2
-- Hexagonal numbers, H_n = n(2n-1)

-- Note that Hexagonal Numbers are just Triangular Numbers with odd n.
-- i.e.  if n=2k-1, T_n = H_k. (k=1,2,...)
-- so we only need to look for Hexagonal numbers that are also
-- Pentagonal numbers

-- A natural number z is pentagonal if 3*n^2 - n - 2*z = 0 for some
-- natural n. i.e. sqrt(1+24*z) = 5 (mod 6) and 1+24*z is a perfect
-- square.

-- Similarly, a natural number z is hexagonal if 2*n^2 - n - z = 0 for
-- some natural n. i.e. sqrt(1+8*z) = 3 (mod 4) and 1+8*z is a perfect
-- square.
import Data.List(scanl)

hexagonals = [n * (2 * n - 1) | n <- [1..]]

isPentagonal x = round (sqrt (1 + 24 * x)) `mod` 6 == 5

isPerfectSquare = isInt . sqrt

solutions = [h | h <- hexagonals
               , isPerfectSquare (1 + 24 * h)
               , isPentagonal h]

isInt x = x == fromInteger (round x) -- courtesy stackoverflow

main = print . round . head $ dropWhile (<= 40755) solutions
