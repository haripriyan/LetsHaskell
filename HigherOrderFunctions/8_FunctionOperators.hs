-- We can use operators on functions as well
-- The (.) operator is the function composition operator. It takes in two functions and returns a function
-- The ($) operator is the function application operator. It takes in a function and value and aplies the function to the value
square x = x * x
cube x = x * x * x
squareAndThenCube = cube . square
-- Same as squareAndThenCube x = cube (square x)
-- Note that in funcion composition the functions are applied to the value from right towards left

-- notNull function of a list
-- Don't get stumped with the line below. It will cleared in due course. Its needed now just for saisfying the compiler
notNull:: [a] -> Bool
notNull = not . null

-- Note that, for function composition both the functions should take in only one argument!!

-- The function application operator, is useful in cases where you need to apply a function
-- Say you have a list of functions, then you can apply the functions to a certain value
listOfFunctions = [(+1), (\x -> x * 2 + 1), (\x -> x * x)]
applyFunctionsToValue x = map ($x) listOfFunctions
zipping = zipWith ($) listOfFunctions [1,2,3]
