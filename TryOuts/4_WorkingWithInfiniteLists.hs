-- 1. Create an infinite list of odd numbers.
-- 2. Find the first n odd numbers
-- 3. Find the first 10 odd number multiple of 7

listOfOddNumbersFrom n = n : (listOfOddNumbersFrom (n + 2))
firstNOddNumbers n = take n (listOfOddNumbersFrom 1)
listDivisibleBy7 (x:xs)
        | x `mod` 7 == 0 = x : (listDivisibleBy7 xs)
        | otherwise = listDivisibleBy7 xs
oddMultiplesOf7 n = take n (listDivisibleBy7 (listOfOddNumbersFrom 1))
