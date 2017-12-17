-- In most languages you need to supply all the required parameters for a function
-- Example, if a function takes in 2 arguments, you need to pass 2 arguments to invoke it

-- Haskell allows you to pass in lesser number of arguments than is defined.
add x y = x + y

-- Here we can call the add function by passing 1 argument
-- This will apply the passed  argument and will return back a function
-- The returned funtion is of type of the left out argument and the corresponding return type of the origin function
incrementBy1 = add 1

-- Now we can call incrementBy1 with the remaining argument (of add function)

-- Note that the arguments are and should be given in the order of their definition
