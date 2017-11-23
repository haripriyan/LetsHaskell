-- Using lists in Haskell
x = [1,2,3]

-- Empty list
empty = []

-- Adding elements to list
-- The element 4 is added with the elements of x and returns a new list
y = 4 : x

-- The : operator is called 'cons'
-- The square braces above are really short hand of the below format
-- The lists are always ended with an empty list
y' = 4:1:2:3:[]

-- Strings are really just special type of char list
string = "String"
string' = 'S':'t':'r':'i':'n':'g':[]
