-- As promised, lets rewrite these functions a little better using pattern matching

-- Write a function to double all the elements in a number list.
doubleAll' [] = []
doubleAll' (x:xs) = (2 * x) : (doubleAll' xs)

-- Write a function to filer out all odd numbers from the elements in a number list
filterEven' [] = []
filterEven' (x:xs) = if x `mod` 2 == 0
                      then x : filterEven' xs
                      else filterEven' xs

-- We are getting better I hope :)
-- Still a while to go, eh
