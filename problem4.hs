three_digit_numbers = [100..999]

scale ls n = map (* n) ls

products ls ms = concatMap (scale ms) ls

is_palindrome x = y == reverse y
  where y = show x


problem ls = maximum $ filter is_palindrome $ products ls ls

main = putStrLn $ show $ problem three_digit_numbers
