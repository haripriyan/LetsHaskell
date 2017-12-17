-- The basic operators in Haskell are actually functions
-- Like +, -, *, :, ++
-- This means that they can be passed arounf just like any other functions
-- They can also be used for partial application of functions

-- We can use them as function by using parenthesis around them
x = (+) 5  3

-- You can also define custom operators.
-- Example consider the vector addition operator as below
(a,b) +. (c,d) = (a + c, b + d)

-- We can also use partial application for the operator functions
incrementBy1' = (+) 1

-- We can also  define position of the partial argument, by doing below
incrementBy1'' = (1+)
incrementBy1''' = (+1)

-- Similarly any function that takes in 2 arguments can be turned into an operator
-- Consider the mod function
val = mod 34 9
-- To use the mod function as an operator, we should surround it with backticks ``
val' = 34 `mod` 9
