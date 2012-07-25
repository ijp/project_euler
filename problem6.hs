square x = x * x

sum_of_squares = sum . map square

square_of_sums = square . sum

diff ls = sum_of_squares ls - square_of_sums ls

main = putStrLn $ show $ abs $ diff [1..100]
