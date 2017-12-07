-- In any Functional languages, functions are fundamental.
-- In other words, functions can be handled like any values
-- This gives makes things interesting as we are about to see

-- Functions which accept functions as argument or return one are called as Higher Order functions
incrementBy1 a = a + 1
doubleThis x = x * 2
pass2 f = f 2

-- Here incrementBy1 is a function which takes in a single Number and returns a Number
-- And pass2 is a function which takes in a function. This function in turns takes in a Number and returns some type
-- Now we can pass incrementBy1 as input to doubleThis, since they are of same signatures
result = pass2 incrementBy1

-- Extending our understanding, consider the following function, which takes in two functions and a data
funcComposition f g x = f (g x)
-- Try funcComposition with the functions incrementBy1 and doubleThis 
