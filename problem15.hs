-- By serendipity, I noticed that I had solved this one a while back
-- in a different context.

-- Notice that in an nxm grid with moves to the right and down, every
-- path from (0,0) to (n,m) has n+m edges and n+m+1 points. The
-- sequence of vertices can be completely recovered from either the
-- first coordinates, or the second coordinates only. Say you pick the
-- first, then every index 0...n has to be included, and the remaining
-- m can be chosen freely from the n+1 points. Giving (n+1 multichoose
-- m) paths i.e. (n+m choose m) = (n+m choose n) paths.
--
-- When n=m, this gives the central binomial coefficents
-- <http://oeis.org/A000984>

n `choose` k = product [(n-k+1)..n] `div` product [1 .. k]

latticePaths :: Integer -> Integer -> Integer
latticePaths rows cols = (rows + cols) `choose` rows

main = print $ latticePaths 20 20
