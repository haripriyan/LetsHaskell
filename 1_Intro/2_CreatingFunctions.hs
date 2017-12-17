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

-- Watch the Spaces!!
-- There is also a small matter of the spaces having more meaning in Haskell than many others
-- For saneness, don't use tabs. EVER
-- Haskell compiler and your editor might interpret the tabs differently.
-- Hence a function that looks ok in your editor might fail compiling.

-- The indentation is important!!
-- If you try the below function, it will not compile
--- ======================================== ---
--powerOf2 x =
--    if x == 0
--  then 1
--    else 2 * (powerOf2 (x-1))
--- ======================================== ---

-- This is because the 'then' is not indented properly
-- When breaking up any expressions or cases, the second line should be atleast the same indentation as the previous one, if not more.
