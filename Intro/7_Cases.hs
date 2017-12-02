-- So far we have used pattern matching on the function parameters
-- Case statements are used to pattern match on some point within the function
-- Reimplementing the doubleAll function using case expression

doubleAll'' list = case list of -- The key word is case followed by the expression on which we want to apply the case. This is followed by of.
      [] -> []  -- These are the pattern matching cases
      (x:xs) -> (2 * x) : (doubleAll'' xs)

-- Note that you cannot use a guard along within the case expressions
