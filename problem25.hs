import Data.List (findIndex)
import Data.Maybe (fromJust)

-- including zero means findIndex returns index 12 for the 12th term
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main = print . fromJust $ findIndex (>= (10 ^ 999)) fibs
-- no point doing anything complicated
