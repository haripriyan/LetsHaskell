-- Creating functions in Haskell
-- <function_name> <param1> <param2> ... <paramN> = <function_body>

-- Function for finding Maximum of 3 numbers
maxOf3 x y z = max (max x y) z

-- Using conditionals. The Indents are important
oddOrEven x =
  if (mod x 2) == 0
  then "Even"
  else "Odd"

-- Using recursions
-- Haskell doesnot have loops unlike imperative languages
-- Note that the parentheses are important for letting the compiler know the order of precedence
-- By default the function calls are given the highest priority
powerOf2 x =
  if x == 0
  then 1
  else 2 * (powerOf2 (x-1))
