import Data.List

triplets = [(a,b,c) | c <- [1..], b <- [1..c], a <- [1..b]]

pythagorean_triplets = filter pythagorean triplets
  where pythagorean (a,b,c) = a^2 + b^2 == c^2

answer = case result of
  Just (a,b,c) -> a * b * c
  otherwise -> error "shouldn't happen"
  where result = find (\ (a,b,c) -> a + b + c == 1000) pythagorean_triplets

main = putStrLn $ show answer
