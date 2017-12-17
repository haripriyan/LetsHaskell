-- The fold operations are used for combining the elements of a list into a single element
-- There are basically two types of folds - foldl and foldr

-- Fold Left or foldl is a function which takes in 3 arguments in the below order
-- First being the reduce/combining function
-- Second is the initial value of the accumulator
-- Third is the list being acted upon

-- Here's using foldl to find the sum of a list of integers
sumOfList x = foldl (+) 0 x

-- To understand whats happening here, lets try to printout the steps
showFold s x = "(" ++ s ++ "+" ++ (show x) ++ ")" -- Basically prints out the operation
-- Using this function in place of add, and replacing the accumulator with a string
foldLSteps x = foldl showFold "0" x
-- Now excecute this with a list of [1,2,3,4,5,6]
-- This prints this "((((((0+1)+2)+3)+4)+5)+6)"

-- Similarly lets look at the Fold Right or foldr function
-- This also takes in 3 arguments, in the same order
-- However the function passed in is applied from right
sumOfList' x = foldr (+) 0 x

-- To printout the steps of foldr
showFold' x s = "(" ++ (show x) ++ "+" ++ s ++ ")"
foldRSteps x = foldr showFold' "0" x
-- Now excecute this with a list of [1,2,3,4,5,6]
-- This prints this "(1+(2+(3+(4+(5+(6+0))))))"

-- foldl is theoretically faster than foldr, since it is tail-recursive in nature and the compiler can run optimizations on this
-- However foldr can be used on infinite lists, due the lazy evaluation of the function
