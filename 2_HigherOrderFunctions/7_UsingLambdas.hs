-- Creating and naming new functions for having to pass them to other higher order functions might look like an overkill
-- For that purpose Haskell allows us to pass in functions as lambdas
-- Lambdas in simple terms are just unnamed functions
-- Example of lambda,
-- \ x y z -> x + y + z
-- We can rewrite the zipWith3 implementation using lambdas
zipping3Lists = zipWith3 (\x y z -> x + y + z) [1, 2, 3, 5] [7, 8, 9] [23, 52, 72]

-- We can pass in lambdas in place of a named functions we previously used in the examples
doubleAll = map (\ a -> 2 * a)

-- We can further simplify this by using partial application function of function
doubleAll' = map (2*)

-- Remember not to get carried away and overuse lambdas
-- Using named functions for any reasonalbly complex function is the norm
