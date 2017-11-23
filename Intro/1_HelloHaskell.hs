-- In Haskell source file, you dont use a'let' to define top level variable
-- In GHCi, need to use 'let' to distinguish that you are declaring a new variable and not calling an existing one
string1 = "hello"
string2 = "world"

-- ++ is the string concat operator
greeting = string1 ++ " " ++ string2
