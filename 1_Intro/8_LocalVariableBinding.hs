-- We can bind local variables in Haskell by using either 'let' or 'where'

-- Here we declare a local constant d which is used "in" an expression
-- In other words d is binded to the expression after "in"
isEven n = let d = 2
            in n `mod` d == 0

-- We can bind multiple values too
isMultipleOf3And5 n = let a = 3
                          b = 5
                      in ((n `mod` a) == 0) && ((n `mod` b) == 0)

-- We can use the 'where' binding in a similar way
-- The where binding comes after the expression whereas the let binding comes before one
isEven' n = n `mod` d == 0
            where d = 2

isMultipleOf3And5' n = ((n `mod` a) == 0) && ((n `mod` b) == 0)
                        where a = 3
                              b = 5

-- The where binding must be always associated with a function, whereas a let binding need not be.
-- For example, the below code wouldnt compile
-- someFunc n = 2 * (n * a where a = 5)
-- We can write this using let as
someFunc n = 2 * (let a = 5 in n * a)
