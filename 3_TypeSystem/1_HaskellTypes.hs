-- Haskell has a very powerful type system
-- Haskell is a VERY statically-typed language
-- Haskell also has a powerful type-inference, and hence we very rarely need to specify the types used
-- You can explore the types in GHCi REPL by prefixing :t to any function or data

-- When declaring a data, you can define its type using '::'

listOfIntegers :: [Integer]
listOfIntegers = [1,2,3,5,6]

length' :: [Char] -> Int
length' = length

-- Haskell also allows you to provide type annotations to your data
-- For instance, doubleOf3 = 3 will have its type as Integer
-- If needed, we could explicitly annotate it as Double
doubleOf3 = 3 :: Double

-- Note that Haskell compiler is VERY smart and so you would rarely need to do this.
-- Infact overusing this might cause some unexpected errors!!

-- Explicit types in Haskell are mostly for communicating/ helping the developers rather than for the need of the compiler
-- Also you could use explicit types when trying to fix weird compiler issues (And it could happen quite often when you are starting off!)
-- For instance, try compiling this function and interpret the error

-- someFunc = x + y
--   where x = length "someString"
--         y = 6/2

-- Fill in the type annotations for the values you are expecting, and the compiler will tell you why you are wrong
-- someFunc = x + y
--  where x = length "someString"
--        y = 6/2 :: Int

-- Here the `/` operator is not defined for Integer
