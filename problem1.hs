nats = [0,1..]

divisible_by x n = x `mod` n == 0       
       
multiple3or5 x = divisible_by x 3 || divisible_by x 5 

main = putStrLn $ show $ sum $ filter multiple3or5 $ take 1000 nats
