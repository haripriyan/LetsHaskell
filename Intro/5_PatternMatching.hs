-- Pattern Matching is simple but powerful way of accessing/matching the data
-- Consider the fst and snd functions, and lets try to see how they are implemented using pattern matching
fst' (a,b) = a
-- The fst function takes a single parameter/tuple.
-- But look at what we have done with the arguments
-- Instead of using a single parameter name, we create a tuple with two individual parameter names
-- The Haskell compiler is smart enough to recognise that fst' takes in a tuple of a,b
-- And it assigns the elements of the incoming tuple to a and b respectively

-- Now implementing the snd function be like...
snd' (a,b) = b

-- Similarly we can apply Pattern matching on lists
-- Here we are declaring the length function for lists
-- Instead of using a parameter name to the input list, we are going to use pattern matching

-- We define two length' functions, one matching the input pattern of empty list
-- The other pattern matching the list to its head and tail
length' [] = 0 -- When we call length' with an empty list, this pattern will be matched
length' (x:xs) = 1 + length' xs -- This pattern will be matched otherwise

-- Now lets revisit our Tryouts. Reimplement our doubleAll and filterEven functions using Pattern matching instead of conditionals
