-- Put your knowledge of guards into use here

-- Write a function to filer out all odd numbers from the elements in a number list
filterEven'' [] = []
filterEven'' (x:xs)
          | x `mod` 2 == 0 = x : filterEven'' xs
          | otherwise = filterEven'' xs

-- Don't know about you, but feel like we are expressing our intents better using Guards instead of the earlier conditionals
-- We can do still better, but not yet ;)
