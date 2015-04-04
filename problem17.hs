-- the problem is small enough you can also generate all 1000 strings
-- and sum their lengths
main = print $ length "one" + length "thousand" + lessThanThousand

lessThanThousand = lessThanHundred + sum (map f digits)
  where f digit = 100 * (length digit + length "hundred") + 99 * length "and" + lessThanHundred

lessThanHundred = lessThanTwenty + sum (map f tens)
  where f ten = 10 * length ten + lessThanTen

lessThanTwenty = lessThanTen + sum (map length teens)

lessThanTen = sum (map length digits)

digits = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
