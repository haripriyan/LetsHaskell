-- Consider a list of integers as input
-- 1. Write a function using map to double each elements
numbers = [23,6,788,3423,43]
doubledNumbers = map (*2) numbers

-- Given a list of strings, filter the strings which are of length greater than 5
strings = ["Some", "Strings", "are", "more", "equal", "than", "others"]
lengthGreaterThan5 x = (length x) > 5
filteredStrings = filter lengthGreaterThan5 strings

-- Rewrite the filter even function for our example in Tryouts 3
isEven x = x `mod` 2 == 0
filterEven = filter isEven
-- So we basically reduced the function into few words!!

-- Consider the tuple list given below
tuples = [("Why", 5), ("so", 2), ("serious", 4), ("?", 3)]

-- Write a function to filter out elements which have even number in the tuple and show only the string for the filter list
isEven' x = ((snd x) `mod` 2) == 0
result = map fst (filter isEven' tuples)
